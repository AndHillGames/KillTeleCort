program killtelecort;

uses
  Forms,
  main in 'main.pas' {mainFrm},
  settings in 'settings.pas' {settingsFrm},
  info in 'info.pas' {infoFrm},
  hilfe in 'hilfe.pas' {helpFrm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Kill Telemetrie and Cortana Tasks V1.0.0';
  Application.CreateForm(TmainFrm, mainFrm);
  Application.CreateForm(TsettingsFrm, settingsFrm);
  Application.CreateForm(TinfoFrm, infoFrm);
  Application.CreateForm(ThelpFrm, helpFrm);
  Application.Run;
end.
