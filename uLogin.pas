unit uLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ActnList, Mask, DBCtrlsEh, ExtCtrls,
  ComCtrls, PropFilerEh, PropStorageEh, Utils, dxGDIPlusClasses, acPNG,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxControls, cxContainer, cxEdit, cxLabel;

type
  TfrmLogin = class(TForm)
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    edtUserName: TDBEditEh;
    edtUserPwd: TDBEditEh;
    PropStorageEh1: TPropStorageEh;
    Image2: TImage;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    ActionList1: TActionList;
    actAutoLogin: TAction;
    procedure btnOKClick(Sender: TObject);
    procedure edtUserPwdChange(Sender: TObject);
    procedure actAutoLoginExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

uses uMain;

{$R *.dfm}

procedure TfrmLogin.actAutoLoginExecute(Sender: TObject);
begin
  {$IFDEF DEBUG}
  edtUserName.Text := 'Novikov_BK';
  edtUserPwd.Text := 'Cyjdsvujljv1@';
  btnOK.Click;
  {$ENDIF}
end;

procedure TfrmLogin.btnOKClick(Sender: TObject);
begin
  {Заполнены ли поля?}
  if (edtUserName.Value = null) OR (edtUserName.Text = '') then
  begin
    MessageBox(handle, MES_NO_USER_NAME, MES_INFO, MB_ICONHAND);
    ModalResult := mrNone;
    exit;
  end;

  if (edtUserPwd.Value = null) OR (edtUserPwd.Text = '') then
  begin
    MessageBox(handle, MES_NO_PASSWORD, MES_INFO, MB_ICONHAND);
    ModalResult := mrNone;
    exit;
  end;
  ModalResult := mrOk ;
end;

procedure TfrmLogin.edtUserPwdChange(Sender: TObject);
begin
  edtUserPwd.Color := clWindow;
end;

end.
