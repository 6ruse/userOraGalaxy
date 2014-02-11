unit Utils;

interface

uses SysUtils, Windows, IniFiles, Forms, Registry, Classes, Ora, ShellAPI,
     ActiveX, Variants ;

const
  CONST_KILL_SESION      = 'ALTER SYSTEM KILL SESSION ''%s, %s''';
  SQL_FIND_USER          = 'select XU$LOGINNAME from X$users WHERE XU$LOGINNAME$UP Like ''%s''';
  SQL_NEW_PAS_USER       = 'UPDATE X$USERS SET XU$PASSWORD = :pas, XU$FLAG = 1025 WHERE XU$LOGINNAME$UP = :users';//XU$FLAG = 1
  SQL_UNLOC_PAS_USER     = 'UPDATE X$USERS SET XU$FLAG = 1024 WHERE XU$LOGINNAME$UP = :users';
  SQL_ALTER_PAS_USER     = 'ALTER USER GALAKSU#%s IDENTIFIED BY %s';
  SQL_SELECT_LDAP        = '<LDAP://khmau-ldap/DC=KZ,DC=ENRC,DC=COM>;(&(objectCategory=person)(objectClass=user)(samAccountName=%S));samAccountName, mail;subtree';
  CONST_SQL_UNLOCK       = 'ALTER USER %s ACCOUNT UNLOCK';




  CNST_SELECT_ALL_USER   = 'select XU$FULLNAME,XU$LOGINNAME,TO_ORADATE(ATL_LASTDATE),(SELECT CREATED FROM DBA_USERS WHERE USERNAME LIKE ''GALAKSU#'' || XU$LOGINNAME$UP) AS CREATE_USER'
                           +',(SELECT LOCK_DATE FROM DBA_USERS WHERE USERNAME LIKE ''GALAKSU#'' || XU$LOGINNAME$UP) AS LOCK_DATE,XU$FLAG,(XU$TYPE -1) AS USERTYPE'
                           +',CASE WHEN (SELECT ACCOUNT_STATUS FROM DBA_USERS WHERE USERNAME LIKE ''GALAKSU#'' || XU$LOGINNAME$UP ) = ''OPEN'' THEN -1 ELSE 1 END AS BLOCK_ORA'
                           +' from X$users order by XU$FULLNAME';
  CNST_WHERE_SELECT_USER = 'select XU$FULLNAME,XU$LOGINNAME,TO_ORADATE(ATL_LASTDATE),(SELECT CREATED FROM DBA_USERS WHERE USERNAME LIKE ''GALAKSU#'' || XU$LOGINNAME$UP) AS CREATE_USER'
                           +',(SELECT LOCK_DATE FROM DBA_USERS WHERE USERNAME LIKE ''GALAKSU#'' || XU$LOGINNAME$UP) AS LOCK_DATE,XU$FLAG,(XU$TYPE -1) AS USERTYPE'
                           +',CASE WHEN (SELECT ACCOUNT_STATUS FROM DBA_USERS WHERE USERNAME LIKE ''GALAKSU#'' || XU$LOGINNAME$UP ) = ''OPEN'' THEN -1 ELSE 1 END AS BLOCK_ORA'
                           +' from X$users where UPPER(XU$FULLNAME) like UPPER(''%s'') order by XU$FULLNAME';
  NAME_PRG               = '������������ Oracle, version %s';
  MES_ERR_SEND_MESSAGE   = '������ ��� ������������ ������ ��� ������������, ���� ������: %s';
  CNST_OUTLOOK           = 'Outlook.Application';
  UNDEFINED              = '<�� ����������>';
  MES_NO_USER_NAME       = '�� ������� ��� ������������';
  MES_INFO               = '���������';
  MES_NO_PASSWORD        = '�� ������ ������';
  MES_ERR_CONNECT_USER   = '������ ��� ���������� � ����� ������!'#13#13'����� ���������: %s';
  MES_ERR_CAPTION        = '������'; // ��������� ���� � �������
  CONST_LEFT_USER_NAME   = 'GALAKSU#';
  CNST_USER_SYSTEM       = '� ������� �����: %s';
  CNST_BASE_NAME         = '��������� � %s';
  CNST_ERR_LDAP          = '������ ������ ������������ � LDAP, ����� ������: %s';
  CNST_LDAP_NOT_USER     = '������������ �� ������ � LDAP';
  CNST_LOG_FILE          = 'Log.txt';
  MOD_ALT                = 1;
  MOD_CONTROL            = 2;
  VK_R                   = $52;


  function  GetSelfVersion: String;//�������� ������
  function  ReadParam(const Section: string; const Ident: string; Default: string = ''): string;
  procedure ReportHtml(Dset: TOraQuery; Caption: String);
  procedure AddLog(TXT: string = #13); // �������� � ���

implementation

uses uMain;

procedure AddLog(TXT: string = #13); // �������� � ���
var
  ls: string;
  FLogFile: TextFile;
begin
  try
    AssignFile(FLogFile, CNST_LOG_FILE);
    if FileExists(CNST_LOG_FILE) then
      Append(FLogFile)
    else
      ReWrite(FLogFile) ;

    if TXT = #13 then
    begin
      Writeln(FLogFile, '');
    end
    else
    begin
      ls := Format('[%s]: %s. DataBase %s', [DateTimeToStr(Now), TXT, FrmMain.DBaseInfo]);
      Writeln(FLogFile, ls );
    end;
    CloseFile(FLogFile);
  except
  end;
end;

function GetSelfVersion: String;
var pVer: ^VS_FIXEDFILEINFO;
    Buff: Pointer;
    iVer:  DWORD;
    i: Integer;
    VerStr: String;
begin
 {������ ���-�����}
 iVer := FindResource(0,'#1',RT_VERSION);
 if iVer = 0 then
   begin
     Result := UNDEFINED;
     Exit;
   end;

 Buff := Pointer(LoadResource(0,iVer));
 pVer := nil;
 for i := 0 to (WORD(Buff^) div 4) -1 do
   begin
     if DWORD(Buff^) = $FEEF04BD then
       begin
         pVer := Buff;
         Break;
       end;
     Buff := Ptr(DWORD(Buff)+4);
   end;
 if pVer^.dwSignature<>$FEEF04BD then
   begin
     Result := UNDEFINED;
   end
 else
   begin
     VerStr := IntToStr((pVer^.dwProductVersionMS shr $10) and $FFFF);
     VerStr := VerStr+'.'+IntToStr(pVer^.dwProductVersionMS and $FFFF);
     VerStr := VerStr+'.'+IntToStr((pVer^.dwProductVersionLS shr $10) and $FFFF);
     VerStr := VerStr+'.'+IntToStr(pVer^.dwProductVersionLS and $FFFF);
     Result := VerStr;
   end;
end;

function ReadParam(const Section: string; const Ident: string; Default: string = ''): string;
var
  Ini: TIniFile;
begin
  {�������� �������� ���������}
  Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.cfg'));
  Result := Ini.ReadString(Section, Ident, Default);
  Ini.Free;
end;

procedure ReportHtml(Dset: TOraQuery; Caption: String);
var
  HTMLStr: TStringList;
  i: integer;
begin
  {��������� ����� � html}
  Dset.DisableControls() ;
  HTMLStr:=TstringList.Create;
  HTMLStr.Clear;
  HTMLStr.Add('<HTML>');
  HTMLStr.Add('<HEAD>');
  HTMLStr.Add('<TITLE>'+'HTML'+'</TITLE>');
  HTMLStr.Add('</HEAD>');
  HTMLStr.Add('<BODY BGCOLOR="#FFFFEE">');
  HTMLStr.Add('<H1><CENTER>'+Caption+'</CENTER></H1>');
  HTMLStr.Add('<table border>');
  HTMLStr.Add('<tr>');

  for i:=0 to Dset.FieldCount-1 do
    HTMLStr.Add('<th>'+Dset.Fields[i].FieldName + '</th>');
  HTMLStr.Add('</tr>');

  Dset.First;
  while not Dset.Eof do
  begin
    HTMLStr.Add('<tr>');
    for i := 0 to Dset.FieldCount-1 do
      if Dset.Fields[i].DisplayText = '' then
        HTMLStr.Add('<td>'+'___'+'/<td>')
      else
        HTMLStr.Add('<td>'+Dset.Fields[i].DisplayText+'</td>');
    HTMLStr.Add('</tr>');
    Dset.Next;
  end;

  HTMLStr.Add('</TABLE>');
  HTMLStr.Add('</BODY>');
  HTMLStr.Add('</HTML>');
  HTMLStr.SaveToFile('HTML.html');
  HTMLStr.Free;
  ShellExecute(0, 'open', pchar('HTML.html'), '', '', sw_ShowNormal);
  Dset.First ;
  Dset.EnableControls() ;
end;

end.
