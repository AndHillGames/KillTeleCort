unit settings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ActnMan, ActnColorMaps, Spin, AdvAppStyler;

type
  TsettingsFrm = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    checkboxTele: TCheckBox;
    checkboxCortanaBack: TCheckBox;
    checkboxCortana: TCheckBox;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    spinInterval: TSpinEdit;
    Label3: TLabel;
    XPColorMap1: TXPColorMap;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    checkboxAutoStart: TCheckBox;
    AdvFormStyler1: TAdvFormStyler;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  settingsFrm: TsettingsFrm;

implementation

uses main;

{$R *.dfm}

procedure TsettingsFrm.BitBtn1Click(Sender: TObject);
begin
  mainFrm.writeToRegistry(HKEY_CURRENT_USER,'SOFTWARE\AndHillDevelopment\KillTeleCort','interval',IntToStr(spinInterval.Value));
  mainFrm.writeToRegistry(HKEY_CURRENT_USER,'SOFTWARE\AndHillDevelopment\KillTeleCort','checktelemetry',LowerCase(BoolToStr(checkboxTele.Checked,true)));
  mainFrm.writeToRegistry(HKEY_CURRENT_USER,'SOFTWARE\AndHillDevelopment\KillTeleCort','checkcortanabacktask',LowerCase(BoolToStr(checkboxCortanaBack.Checked,true)));
  mainFrm.writeToRegistry(HKEY_CURRENT_USER,'SOFTWARE\AndHillDevelopment\KillTeleCort','checkcortana',LowerCase(BoolToStr(checkboxCortana.Checked,true)));
  mainFrm.writeToRegistry(HKEY_CURRENT_USER,'SOFTWARE\AndHillDevelopment\KillTeleCort','autostart',LowerCase(BoolToStr(checkboxAutoStart.Checked,true)));
  checkTele:=LowerCase(BoolToStr(checkboxTele.Checked,true));
  checkCortanaback:=LowerCase(BoolToStr(checkboxCortanaBack.Checked,true));
  checkCortana:=LowerCase(BoolToStr(checkboxCortana.Checked,true));
  interval:=IntToStr(spinInterval.Value);
  autostart:=LowerCase(BoolToStr(checkboxAutoStart.Checked,true));
  MessageDlg('Die Einstellungen wurden in der Registry gespeichert. Du kannst diese jederzeit ändern. Klicke auf OK um fortzufahren.',mtInformation,[mbOK],0);
  close;
end;

procedure TsettingsFrm.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TsettingsFrm.FormShow(Sender: TObject);
begin
  if checkTele = 'true' then
    checkboxTele.Checked:=true
  else
    checkboxTele.Checked:=false;

  if checkCortanaback = 'true' then
    checkboxCortanaBack.Checked:=true
  else
    checkboxCortanaBack.Checked:=false;

  if checkCortana = 'true' then
    checkboxCortana.Checked:=true
  else
    checkboxCortana.Checked:=false;

  if autostart = 'true' then
    checkboxAutoStart.Checked:=true
  else
    checkboxAutoStart.Checked:=false;

  spinInterval.Value:=StrToInt(interval);
end;

end.
