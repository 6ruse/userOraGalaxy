program UserOra;

uses
  Forms,
  uMain in 'uMain.pas' {FrmMain},
  Utils in 'Utils.pas',
  uLogin in 'uLogin.pas' {frmLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.Run;
end.
