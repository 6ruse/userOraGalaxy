unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPC, cxControls, ButtonGroup,
  ActnList, ImgList, DBGridEhGrouping, ComCtrls, GridsEh, DBGridEh, DB,
  DBAccess, Ora, MemDS, StdCtrls, Mask, DBCtrlsEh, cxContainer, cxEdit, cxLabel,
  ExtCtrls, Menus, Clipbrd, ADODB, ComObj, StrUtils, PropFilerEh, PropStorageEh,
  cxTextEdit, cxMemo, cxRichEdit;

type
  TFrmMain = class(TForm)
    ButtonGroup1: TButtonGroup;
    ActionList1: TActionList;
    actClose: TAction;
    ImageListGroup: TImageList;
    StatusBar1: TStatusBar;
    ImageListPage: TImageList;
    OraSession1: TOraSession;
    DSActiveUser: TDataSource;
    OraActiveUser: TOraQuery;
    OraActiveUserSID: TFloatField;
    OraActiveUserSERIAL: TFloatField;
    OraActiveUserUSERNAME: TStringField;
    OraActiveUserSTATUS: TStringField;
    OraActiveUserTYPE: TStringField;
    OraActiveUserLOGON_TIME: TStringField;
    OraActiveUserOSUSER: TStringField;
    OraActiveUserMACHINE: TStringField;
    OraActiveUserPROGRAM: TStringField;
    DSAllUer: TDataSource;
    OraAllUser: TOraQuery;
    OraAllUserXULOGINNAME: TStringField;
    OraAllUserXUFULLNAME: TStringField;
    DSLocUser: TDataSource;
    OraLocUser: TOraQuery;
    OraLocUserUSERNAME: TStringField;
    OraLocUserACCOUNT_STATUS: TStringField;
    OraLocUserLOCK_DATE: TDateTimeField;
    actSavePass: TAction;
    actCancelPass: TAction;
    actDelPass: TAction;
    actReport: TAction;
    actUpdate: TAction;
    TrayIcon1: TTrayIcon;
    PopupTray: TPopupMenu;
    N5: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    actHide: TAction;
    actShow: TAction;
    actKillSession: TAction;
    OraQuery: TOraQuery;
    actUnlokedUser: TAction;
    OraNewPass: TOraQuery;
    OraNewPassXUPASSWORD: TVarBytesField;
    OraNewPassXUFLAG: TIntegerField;
    actSendMessage: TAction;
    QueryLDAP: TADOQuery;
    QueryLDAPsamAccountName: TWideStringField;
    QueryLDAPmail: TWideStringField;
    actShowSetting: TAction;
    RegPropStorageManEh1: TRegPropStorageManEh;
    PropStorageEh1: TPropStorageEh;
    actCopyPas: TAction;
    actNewPas: TAction;
    actNewDB: TAction;
    cxPageControl2: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxPageControl1: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    DBGridEh4: TDBGridEh;
    cxTabSheet4: TcxTabSheet;
    DBGridEh1: TDBGridEh;
    cxTabSheet5: TcxTabSheet;
    DBGridEh2: TDBGridEh;
    cxTabSheet6: TcxTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    cxLabel1: TcxLabel;
    EditPass: TDBEditEh;
    EditXex: TDBEditEh;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    ListPas: TListBox;
    ListXex: TListBox;
    cxTabSheet2: TcxTabSheet;
    cxPageControl3: TcxPageControl;
    cxTabSheet7: TcxTabSheet;
    Label3: TLabel;
    cxLabel5: TcxLabel;
    MemoMessage: TMemo;
    CheckMessage: TCheckBox;
    cxTabSheet8: TcxTabSheet;
    cxLabel6: TcxLabel;
    CheckPass: TCheckBox;
    CheckString: TCheckBox;
    EditString: TEdit;
    cxTabSheet9: TcxTabSheet;
    RichLog: TcxRichEdit;
    OraAllUserBlockGal: TIntegerField;
    OraAllUserDROP_PASS: TIntegerField;
    ImgLstGrid: TImageList;
    OraAllUserCREATE_USER: TDateTimeField;
    OraAllUserBLOCK_ORA: TFloatField;
    OraAllUserTO_ORADATEATL_LASTDATE: TDateTimeField;
    OraAllUserLOCK_DATE: TDateTimeField;
    OraAllUserUSERTYPE: TFloatField;
    OraAllUserXUFLAG: TIntegerField;
    procedure actCloseExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure actSavePassExecute(Sender: TObject);
    procedure actCancelPassExecute(Sender: TObject);
    procedure actDelPassExecute(Sender: TObject);
    procedure actReportExecute(Sender: TObject);
    procedure actUpdateExecute(Sender: TObject);
    procedure actHideExecute(Sender: TObject);
    procedure actShowExecute(Sender: TObject);
    procedure actKillSessionExecute(Sender: TObject);
    procedure actUnlokedUserExecute(Sender: TObject);
    procedure actSendMessageExecute(Sender: TObject);
    procedure actShowSettingExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CheckPassClick(Sender: TObject);
    procedure cxPageControl3Change(Sender: TObject);
    procedure OraActiveUserUSERNAMEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure actCopyPasExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actNewPasExecute(Sender: TObject);
    procedure OraLocUserUSERNAMEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure OraAllUserCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    FUserUnloked : String;  // последний разблокированнный пользователь
    FUserPass    : String;  // последний установленный пароль
    FDBaseInfo   : String;  // информация о базе к которой подключены
    IdMessage    : integer; // мессага зарегестрированной горячей клавиши
    property UserUnloked : String Read FUserUnloked Write FUserUnloked ;
    property UserPass : String Read FUserPass Write FUserPass ;
    function ConnectDB(user, pass : String; var Mess : String): Boolean;
    procedure AccNewPass(UserName: String);
    procedure wmhotkey(var msg: twmhotkey); message wm_hotkey;
    procedure UnLochedUser(UserName: String);// разблокировать пользователя везде
  public
    { Public declarations }
    property DBaseInfo : String Read FDBaseInfo Write FDBaseInfo ;
  end;

var
  FrmMain: TFrmMain;

const
  CNST_BLOCK       = 8;
  CNST_DROP_PASS   = 1;

implementation

uses utils , uLogin;

{$R *.dfm}

procedure TFrmMain.AccNewPass(UserName: String);
  var
    I : integer ;
begin
//  правит X$users, ставим новый пароль
  try
    OraNewPass.SQL.Clear ;
    OraNewPass.SQL.Text := SQL_NEW_PAS_USER;
    OraNewPass.ParamByName('users').AsString := UserName ;
    OraNewPass.ParamByName('pas').AsString := ListXex.Items[ListXex.ItemIndex] ;
    OraNewPass.Execute ;
    OraNewPass.SQL.Clear ;
    OraNewPass.SQL.Text := format(SQL_ALTER_PAS_USER,[UserName,PChar(ListPas.Items[ListPas.ItemIndex])]);
    OraNewPass.Execute ;
    MessageBox(Handle,PChar(Format('Пользователю %s, Пароль установлен - %s',[UserName,ListPas.Items[ListPas.ItemIndex]])),'Внимание',MB_ICONEXCLAMATION);
    StatusBar1.Panels[2].Text := Format('Пользователь %s, пароль %s',[UserName, ListPas.Items[ListPas.ItemIndex]]);
    UserPass := PChar(Copy(ListPas.Items[ListPas.ItemIndex],2,Length(ListPas.Items[ListPas.ItemIndex])-2)) ;
    if CheckPass.Checked then
      Clipboard.SetTextBuf(PWideChar(UserPass));
    if CheckString.Checked then
      Clipboard.SetTextBuf(PWideChar(EditString.Text));

    AddLog(PWideChar(Format('Пользователю %s установлен пароль %s',[UserName,ListPas.Items[ListPas.ItemIndex]])));
//    CopyToClipboard() ;
    if ListPas.ItemIndex = 4 then
      ListPas.ItemIndex := 0
    else
      ListPas.ItemIndex := ListPas.ItemIndex + 1 ;
    ListXex.ItemIndex := ListPas.ItemIndex ;
  except on e:exception do
  begin
    MessageBox(Handle,'Во время изменения пароля возникла ошибка','Error',MB_ICONHAND);
    AddLog(PWideChar(Format('Во время изменения пароля %s, возникла ошибка',[UserName])));
    OraNewPass.Cancel ;
  end;
  end;
end;

procedure TFrmMain.actCancelPassExecute(Sender: TObject);
begin
  EditPass.Clear ;
  EditXex.Clear ;
end;

procedure TFrmMain.actCloseExecute(Sender: TObject);
begin
  Close ;
end;

procedure TFrmMain.actCopyPasExecute(Sender: TObject);
  var
    ValueCopy : String ;
begin
  ValueCopy := Clipboard.AsText;
  if not FrmMain.Visible then
    FrmMain.Visible := true ;
  cxPageControl1.ActivePageIndex := 0 ;
  // получили, теперь найдем
  ValueCopy := '%' + ValueCopy + '%' ;
  OraAllUser.Close ;
  OraAllUser.SQL.Clear ;
  OraAllUser.SQL.Add(Format(CNST_WHERE_SELECT_USER,[ValueCopy])) ;
  OraAllUser.Open ;
end;

procedure TFrmMain.actDelPassExecute(Sender: TObject);
  var
    ItemIndex : Integer ;
begin
  if ListPas.ItemIndex <> -1 then
  begin
    ItemIndex := ListPas.ItemIndex ;
    ListPas.Items.Delete(ItemIndex);
    ListXex.Items.Delete(ItemIndex);
    exit ;
  end;

  if ListXex.ItemIndex <> -1 then
  begin
    ItemIndex := ListXex.ItemIndex ;
    ListXex.Items.Delete(ItemIndex);
    ListPas.Items.Delete(ItemIndex);
    exit ;
  end;
end;

procedure TFrmMain.actHideExecute(Sender: TObject);
begin
   Hide;
end;

procedure TFrmMain.actKillSessionExecute(Sender: TObject);
begin
{Отключить}
 if cxPageControl1.ActivePageIndex <> 1 then
  exit ;
 OraQuery.SQL.Clear ;
 OraQuery.SQL.Text := format(CONST_KILL_SESION,[OraActiveUserSID.AsString,OraActiveUserSERIAL.AsString]);
 OraQuery.Execute ;
 OraLocUser.Close ;
 OraLocUser.Open ;
end;

procedure TFrmMain.actNewPasExecute(Sender: TObject);
  var
    S, FindUser : String ;
    Find        : String ;
begin
  if OraAllUser.IsEmpty then exit ;
  if cxPageControl1.ActivePageIndex <> 0 then Exit ;

  Find := uppercase(OraAllUserXULOGINNAME.AsString) ;
  AccNewPass(Find);
  UserUnloked := Find;
////////////////////////////////////////////////////////////////////////////////
  S := 'select username, account_status, lock_date from dba_users where ((account_status = ''LOCKED'') or (account_status = ''LOCKED(TIMED)'')) and userName like ''%' + uppercase(Find) + '%''' ;
  try
    OraQuery.Close ;
    OraQuery.SQL.Clear ;
    OraQuery.SQL.Text := S ;
    OraQuery.Open ;
    except on E:Exception do
  end;
  OraQuery.FetchAll ;
  if (OraQuery.RecordCount = 1) then//одна запись, разблокируем сразу
  begin
    FindUser := OraQuery.FieldByName('USERNAME').AsString ;
    OraQuery.close ;
    OraQuery.SQL.Clear ;
    OraQuery.SQL.Text := format(CONST_SQL_UNLOCK,[FindUser]);
    OraQuery.Execute ;
    MessageBox(Handle,PChar(Format('Разблокировал в Oracle: %s',[Find])),'Unlocked',MB_ICONEXCLAMATION) ;
    AddLog(PWideChar(Format('Пользователь %s разблокирован в ORACLE',[Find])));
  end;
  OraQuery.Close ;

  if CheckMessage.Checked then
    actSendMessageExecute(sender) ;
  AddLog();
end;

procedure TFrmMain.actReportExecute(Sender: TObject);
begin
  case cxPageControl1.ActivePageIndex of
     0 : ReportHtml(OraAllUser,cxPageControl1.Pages[0].Caption) ;
     1 : ReportHtml(OraActiveUser,cxPageControl1.Pages[1].Caption) ;
     2 : ReportHtml(OraLocUser,cxPageControl1.Pages[2].Caption) ;
  end;
end;

procedure TFrmMain.actSavePassExecute(Sender: TObject);
begin
  ListPas.Items.Add(EditPass.Text);
  ListXex.Items.Add(EditXex.Text);
end;

procedure TFrmMain.actSendMessageExecute(Sender: TObject);
var
  Outlook     : OLEVariant;
  MailItem    : Variant;
  MessageText : String ;
begin
// получим мыло получателя с LDAP
  try
    QueryLDAP.Active := false ;
    QueryLDAP.SQL.Clear ;
    QueryLDAP.SQL.Add(Format(SQL_SELECT_LDAP,[UserUnloked]));
    QueryLDAP.Active := true ;
  except on E : Exception do
  begin
    MessageBox(Handle,PWideChar(format(CNST_ERR_LDAP,[E.Message])),MES_ERR_CAPTION,MB_ICONHAND) ;
    AddLog(PWideChar(Format('Поиск в LDAP пользователя %s, завершился неудачей, текст ошибки %s',[UserUnloked, E.Message])));
    exit ;
  end;
  end;
  if QueryLDAP.IsEmpty then
  begin
    MessageBox(Handle,CNST_LDAP_NOT_USER,MES_ERR_CAPTION,MB_ICONHAND) ;
    exit ;
  end;

//напишем письмо
  try
    Outlook := GetActiveOleObject(CNST_OUTLOOK);
  except
    Outlook := CreateOleObject(CNST_OUTLOOK);
  end;

  MailItem := Outlook.CreateItem(0);
  try
    MessageText := MemoMessage.Text ;
    MessageText := ReplaceStr( MessageText, '%USER%', UserUnloked);
    MessageText := ReplaceStr( MessageText, '%PASS%', UserPass);

    MailItem.Subject := 'Пароль ПК Галактика';
    MailItem.Body    := MessageText ;
    MailItem.Recipients.add(QueryLDAPmail.AsString);
    MailItem.Display();
    AddLog(PWideChar(Format('Пользователю %s на Емайл %s отправил письмо',[UserUnloked,QueryLDAPmail.AsString])));
  except on E:Exception do
  begin
    MessageBox(Handle,PWideChar(Format(MES_ERR_SEND_MESSAGE,[e.Message])),MES_ERR_CAPTION,MB_ICONHAND);
    AddLog(PWideChar(Format('Ошибка при формировании письма для пользователя %s, текс ошибки: %s',[UserUnloked, E.Message])));
  end;
  end;

  VarClear(Outlook);
  QueryLDAP.Close ;

end;

procedure TFrmMain.actShowExecute(Sender: TObject);
begin
 Show ;
end;

procedure TFrmMain.actShowSettingExecute(Sender: TObject);
begin
  if cxPageControl2.ActivePageIndex = 1 then
    cxPageControl2.ActivePageIndex := 0
  else
    cxPageControl2.ActivePageIndex := 1 ;
end;

procedure TFrmMain.actUnlokedUserExecute(Sender: TObject);
  var
    S, FindUser : String ;
    Find        : String ;
begin
  if OraAllUser.IsEmpty then
    exit ;
  if cxPageControl1.ActivePageIndex <> 0 then
    Exit ;

  Find := uppercase(OraAllUserXULOGINNAME.AsString);
  UnLochedUser(Find);
////////////////////////////////////////////////////////////////////////////////
  S := 'select username, account_status, lock_date from dba_users where ((account_status = ''LOCKED'') or (account_status = ''LOCKED(TIMED)'')) and userName like ''%' + uppercase(Find) + '%''' ;
  try
    OraQuery.Close ;
    OraQuery.SQL.Clear ;
    OraQuery.SQL.Text := S ;
    OraQuery.Open ;
    except on E:Exception do
  end;
  OraQuery.FetchAll ;
  if (OraQuery.RecordCount = 1) then//одна запись, разблокируем сразу
  begin
    FindUser := OraQuery.FieldByName('USERNAME').AsString ;
    OraQuery.close ;
    OraQuery.SQL.Clear ;
    OraQuery.SQL.Text := format(CONST_SQL_UNLOCK,[FindUser]);
    OraQuery.Execute ;
    MessageBox(Handle,PChar(Format('Разблокировал в Oracle: %s',[Find])),'Unlocked',MB_ICONEXCLAMATION) ;
    AddLog(PWideChar(Format('Пользователь %s разблокирован в ORACLE',[Find])));
  end;
  OraQuery.Close ;
  AddLog();
end;

procedure TFrmMain.actUpdateExecute(Sender: TObject);
begin
  case cxPageControl1.ActivePageIndex of
     0 : begin
           OraAllUser.Close ;
           OraAllUser.SQL.Clear ;
           OraAllUser.SQL.Add(CNST_SELECT_ALL_USER);
           OraAllUser.open ;
        end;
     1 : begin
           OraActiveUser.Close ;
           OraActiveUser.open ;
         end;
     2 : begin
           OraLocUser.Close ;
           OraLocUser.open ;
         end;
  end;
end;

procedure TFrmMain.CheckPassClick(Sender: TObject);
begin
  if ((Sender is TCheckBox) and ((Sender as TCheckBox).name = 'CheckPass')) then
  begin
//    (Sender as TCheckBox).Checked := true ;
    CheckString.Checked := false ;
  end
  else if ((Sender is TCheckBox) and ((Sender as TCheckBox).name = 'CheckString')) then
  begin
//    (Sender as TCheckBox).Checked := true ;
    CheckPass.Checked := false ;
  end;
end;

function TFrmMain.ConnectDB(user, pass: String; var Mess: String): Boolean;
begin
  result := true ;
  try
  OraSession1.Username :=CONST_LEFT_USER_NAME + user ;
  OraSession1.Password := pass ;
  OraSession1.Open();
  except on e:exception do
  begin
    mess := e.Message ;
    result := false ;
  end;
  end;
end;

procedure TFrmMain.cxPageControl1Change(Sender: TObject);
begin
  case cxPageControl1.ActivePageIndex of
   0 : Begin
         OraAllUser.SQL.Clear ;
         OraAllUser.SQL.Add(CNST_SELECT_ALL_USER);
         OraAllUser.Active := true ;
         OraActiveUser.Active := False ;
         OraLocUser.Active := False ;
       End;
   1 : Begin
         OraActiveUser.Active := true ;
         OraAllUser.Active := False ;
         OraLocUser.Active := False ;
       End;
   2 : Begin
         OraLocUser.Active := true ;
         OraActiveUser.Active := False ;
         OraAllUser.Active := False ;
       End;
  end;
end;

procedure TFrmMain.cxPageControl3Change(Sender: TObject);
begin
  if cxPageControl3.ActivePageIndex = 2 then  //log
  begin
    RichLog.Lines.Clear ;
    RichLog.Lines.LoadFromFile(CNST_LOG_FILE);
  end;
end;

procedure TFrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TrayIcon1.Free ;
end;

procedure TFrmMain.FormCreate(Sender: TObject);
  var
  CountPas  : Integer ;
  i         : Integer ;
  DB,Shema  : String ;
  Port      : Integer ;
  Server    : String ;
  MMess     : String ;
  Mess      : String;
  UserName  : String ;
begin
  Caption := Format(NAME_PRG,[GetSelfVersion()]);
  Countpas := StrToInt(ReadParam('Pass', 'CountPass', ''));

  DB      := ReadParam('Database', 'DatabaseName', '');
  Shema   := ReadParam('Database', 'Shema', '');
  Port    := StrToInt(ReadParam('Database', 'Port','')) ;
  Server  := ReadParam('Database', 'Server', '');

  OraSession1.Server := Format ('%s:%d:%s', [Server, Port, DB ]);
  OraSession1.Schema := Shema;

  I := 0 ;
  frmLogin := TfrmLogin.Create (Self);
  try
    while i < Countpas do
    begin
      if frmLogin.ShowModal = mrOk then
      begin
        if ConnectDB(frmLogin.edtUserName.Text,frmLogin.edtUserPwd.Text, Mess) then
        begin
          UserName := frmLogin.edtUserName.Text ;
          Break ;
        end
        else
        begin
          MMess := Format(MES_ERR_CONNECT_USER,[Mess]);
          MessageBox(Handle, PChar(MMess), MES_ERR_CAPTION, MB_ICONHAND);
          frmLogin.edtUserPwd.Color := clRed;
        end;
      end
      else application.Terminate ;
      inc(i);
    end;
  finally
    frmLogin.Free;
  end;

  ListPas.ItemIndex := 0 ;
  ListXex.ItemIndex := 0 ;

  StatusBar1.Panels[0].Text := Format(CNST_USER_SYSTEM,[UserName]);
  DBaseInfo := Format(CNST_BASE_NAME,[Format ('%s:%s:%s', [Server, Db, Shema ])]);
  StatusBar1.Panels[1].Text := DBaseInfo ;

  for I := 0 to cxPageControl2.PageCount - 1 do
    cxPageControl2.Pages[i].TabVisible := False;
  cxPageControl2.ActivePageIndex := 0 ;
  cxPageControl1.ActivePageIndex := 0 ;

  UserUnloked := '';
  IdMessage := globaladdatom('hotkey1');
  registerhotkey(handle, IdMessage, MOD_CONTROL + MOD_ALT, Ord('C'));
end;

procedure TFrmMain.FormDestroy(Sender: TObject);
begin
  unregisterhotkey(handle,IdMessage);
  globaldeleteatom(IdMessage);
end;

procedure TFrmMain.OraActiveUserUSERNAMEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
// уберем GALAKSU#
  if (Sender <> nil) and (Sender.DataSet <> nil) then
  if Pos(CONST_LEFT_USER_NAME,Sender.AsString) <> 0 then
    Text := copy(Sender.AsString,Pos(CONST_LEFT_USER_NAME,Sender.AsString)+8,length(Sender.AsString))
  else
    Text := Sender.AsString ;
end;

procedure TFrmMain.OraAllUserCalcFields(DataSet: TDataSet);
begin
  OraAllUserBlockGal.AsInteger :=  -1;

  if (OraAllUserXUFLAG.AsInteger AND CNST_BLOCK) > 0 then
    OraAllUserBlockGal.AsInteger :=  1;

  if (OraAllUserXUFLAG.AsInteger AND CNST_DROP_PASS) > 0 then
    OraAllUserDROP_PASS.AsInteger :=  4
  else
    OraAllUserDROP_PASS.AsInteger :=  -1;
end;

procedure TFrmMain.OraLocUserUSERNAMEGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
// уберем GALAKSU#
  if (Sender <> nil) and (Sender.DataSet <> nil) then
  if Pos(CONST_LEFT_USER_NAME,Sender.AsString) <> 0 then
    Text := copy(Sender.AsString,Pos(CONST_LEFT_USER_NAME,Sender.AsString)+8,length(Sender.AsString))
  else
    Text := Sender.AsString ;
end;

procedure TFrmMain.UnLochedUser(UserName: String);
  var
    I : integer ;
begin
//  правит X$users, разблокируем пользователя везде
  try
    OraNewPass.SQL.Clear ;
    OraNewPass.SQL.Text := SQL_UNLOC_PAS_USER;
    OraNewPass.ParamByName('users').AsString := UserName ;
    OraNewPass.Execute ;
    AddLog(PWideChar(Format('Пользователь %s разблокирован в X$users',[UserName])));
  except on e:exception do
  begin
    MessageBox(Handle,PWideChar(Format('Во время разблокировки пользователя в X$users возникла ошибка: %s',[e.Message])),'Error',MB_ICONHAND);
    AddLog(PWideChar(Format('Во время разблокировки пользователя в X$users возникла ошибка: %s',[e.Message])));
    OraNewPass.Cancel ;
  end;
  end;
end;

procedure TFrmMain.wmhotkey(var msg: twmhotkey);
begin
  if msg.hotkey = IdMessage then
    actCopyPasExecute(nil) ;
end;

end.
