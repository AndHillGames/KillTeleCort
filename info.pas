unit info;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TinfoFrm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    BitBtn1: TBitBtn;
    procedure Label7Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  infoFrm: TinfoFrm;

implementation

uses main;

{$R *.dfm}

procedure TinfoFrm.Label7Click(Sender: TObject);
begin
  mainFrm.ExecuteFile('mailto:andhilldev@gmx.de','','');
end;

procedure TinfoFrm.Label8Click(Sender: TObject);
begin
  mainFrm.ExecuteFile('http://www.andhilldev.de','','');
end;

end.
