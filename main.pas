unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnMan, ActnColorMaps, Menus, ImgList, ComCtrls, ToolWin,
  AppEvnts, ActnList, ExtCtrls, commctrl, registry, AdvToolBar,
  AdvToolBarStylers, AdvMenus, AdvMenuStylers, AdvAppStyler, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, ExeInfo, TlHelp32, ShellAPI, WUpdateWiz,
  WUpdateLanguagesU, WUpdate;

type
  TmainFrm = class(TForm)
    MainMenu1: TMainMenu;
    Programm1: TMenuItem;
    Hilfe1: TMenuItem;
    Einstellungen1: TMenuItem;
    N1: TMenuItem;
    Programmbeenden1: TMenuItem;
    Prozess1: TMenuItem;
    Prozessstarten1: TMenuItem;
    Prozessbeenden1: TMenuItem;
    Hilfe2: TMenuItem;
    N2: TMenuItem;
    Homepagebesuchen1: TMenuItem;
    AufneueVersionprfen1: TMenuItem;
    N3: TMenuItem;
    Infober1: TMenuItem;
    XPColorMap1: TXPColorMap;
    Images16: TImageList;
    Images48: TImageList;
    ApplicationEvents1: TApplicationEvents;
    PopupMenu1: TPopupMenu;
    Programmeinstellungen1: TMenuItem;
    N4: TMenuItem;
    Prozessstarten2: TMenuItem;
    Prozessbeenden2: TMenuItem;
    N5: TMenuItem;
    Oberflcheanzeigen1: TMenuItem;
    Programmbeenden2: TMenuItem;
    ActionList1: TActionList;
    settings: TAction;
    exit: TAction;
    startprozess: TAction;
    stopprozess: TAction;
    helptopics: TAction;
    homepage: TAction;
    update: TAction;
    info: TAction;
    TrayIcon: TTrayIcon;
    BalloonHint1: TBalloonHint;
    timer: TTimer;
    action: TTimer;
    AdvDockPanel1: TAdvDockPanel;
    AdvMenuOfficeStyler1: TAdvMenuOfficeStyler;
    AdvToolBar1: TAdvToolBar;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    AdvToolBarButton1: TAdvToolBarButton;
    AdvToolBarButton2: TAdvToolBarButton;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    AdvToolBarButton3: TAdvToolBarButton;
    AdvToolBarButton4: TAdvToolBarButton;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarButton5: TAdvToolBarButton;
    AdvToolBarButton6: TAdvToolBarButton;
    AdvToolBarButton7: TAdvToolBarButton;
    AdvToolBarButton8: TAdvToolBarButton;
    AdvFormStyler1: TAdvFormStyler;
    StatusBarStyler: TAdvOfficeStatusBarOfficeStyler;
    AdvOfficeStatusBar1: TAdvOfficeStatusBar;
    ExeInfo1: TExeInfo;
    WebUpdate1: TWebUpdate;
    WebUpdateWizard1: TWebUpdateWizard;
    WebUpdateWizardGerman1: TWebUpdateWizardGerman;
    procedure settingsExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure startprozessExecute(Sender: TObject);
    procedure stopprozessExecute(Sender: TObject);
    procedure timerTimer(Sender: TObject);
    procedure actionTimer(Sender: TObject);
    procedure exitExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure homepageExecute(Sender: TObject);
    procedure infoExecute(Sender: TObject);
    procedure updateExecute(Sender: TObject);
    procedure helptopicsExecute(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
    function readFromRegistry(root: HKEY; Section, Key: string): String;
    procedure writeToRegistry(root: HKEY; Section, Key, Value: String);
    procedure ExecuteFile(Filename, Params, WorkDir: String);
  end;

type
  TStrArray = array of string;

var
  mainFrm: TmainFrm;
  checkTele: String;
  checkCortanaback: String;
  checkCortana: String;
  interval: String;
  autostart: String;
  curtime: integer;

implementation

uses settings, info, hilfe;

{$R *.dfm}
{$R manifest.res}

procedure TmainFrm.ExecuteFile(Filename, Params, WorkDir: String);
begin
  ShellExecute(Application.Handle, 'open', PChar(Filename), PChar(Params), PChar(WorkDir), SW_NORMAL)
end;

// Strings zerstückeln (interne Hilfsfunktion)
function Explode(var a: TStrArray; Border, S: string): Integer;
var
  S2: string;
begin
  Result  := 0;
  S2 := S + Border;
  repeat
    SetLength(A, Length(A) + 1);
    a[Result] := Copy(S2, 0,Pos(Border, S2) - 1);
    Delete(S2, 1,Length(a[Result] + Border));
    Inc(Result);
  until S2 = '';
end;

// Programmtitel erstellen
function GetProgramTitle(name, version: String): String;
var
  A: TStrArray;
  output: string;
begin
  Explode(A, '.', version);
  output:=name+' V'+A[0]+'.'+A[1]+'.'+A[2]+' Build '+A[3];
  result:=output;
end;

function TmainFrm.readFromRegistry(root: HKEY; Section: string; Key: string): String;
var
  registry: TRegistry;
begin
  registry:=TRegistry.Create;
  try
    registry.RootKey:=root;
    registry.OpenKey(Section, false);
    result:=registry.ReadString(Key);
  finally
    registry.Free;
  end;
end;

procedure TmainFrm.writeToRegistry(root: HKEY; Section: string; Key: string; Value: string);
var
  registry: TRegistry;
begin
  registry:=TRegistry.Create;
  try
    registry.RootKey:=root;
    registry.OpenKey(Section, true);
    registry.WriteString(Key, Value);
  finally
    registry.Free;
  end;
end;

function IsExeRunning(const AExeName: string): boolean;
var
  h: THandle;
  p: TProcessEntry32;
begin
  Result := False;

  p.dwSize := SizeOf(p);
  h := CreateToolHelp32Snapshot(TH32CS_SnapProcess, 0);
  try
    Process32First(h, p);
    repeat
      Result := AnsiUpperCase(AExeName) = AnsiUpperCase(p.szExeFile);
    until Result or (not Process32Next(h, p));
  finally
    CloseHandle(h);
  end;
end;

function KillTask(ExeFileName: string): Integer;
const
  PROCESS_TERMINATE = $0001;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  Result := 0;
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);

  while Integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
      UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile) =
      UpperCase(ExeFileName))) then
      Result := Integer(TerminateProcess(
                        OpenProcess(PROCESS_TERMINATE,
                                    BOOL(0),
                                    FProcessEntry32.th32ProcessID),
                                    0));
     ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;

procedure TmainFrm.actionTimer(Sender: TObject);
begin
  curtime:=0;
  if (IsExeRunning('CompatTelRunner.exe') = true) and (checkTele = 'true') then
    KillTask('CompatTelRunner.exe');
  if (IsExeRunning('backgroundTaskHost.exe') = true) and (checkCortanaback = 'true') then
    KillTask('backgroundTaskHost.exe');
  if (IsExeRunning('SearchUI.exe') = true) and (checkCortana = 'true') then
    KillTask('SearchUI.exe');
end;

procedure TmainFrm.exitExecute(Sender: TObject);
begin
  if MessageDlg('Bist Du sicher, das Du die Anwendung beenden möchtest?',mtConfirmation, [mbYes,mbNo], 0) = mrYes then
  begin
    Application.Terminate;
  end;
end;

procedure TmainFrm.FormCreate(Sender: TObject);
begin
  Application.Title:=GetProgramTitle(Exeinfo1.ProductName, Exeinfo1.FileVersion);
  caption:=Application.Title;

  if readFromRegistry(HKEY_CURRENT_USER,'SOFTWARE\AndHillDevelopment\KillTeleCort','interval') = '' then
  begin
    writeToRegistry(HKEY_CURRENT_USER,'SOFTWARE\AndHillDevelopment\KillTeleCort','interval','10');
    writeToRegistry(HKEY_CURRENT_USER,'SOFTWARE\AndHillDevelopment\KillTeleCort','checktelemetry','true');
    writeToRegistry(HKEY_CURRENT_USER,'SOFTWARE\AndHillDevelopment\KillTeleCort','checkcortanabacktask','true');
    writeToRegistry(HKEY_CURRENT_USER,'SOFTWARE\AndHillDevelopment\KillTeleCort','checkcortana','true');
    writeToRegistry(HKEY_CURRENT_USER,'SOFTWARE\AndHillDevelopment\KillTeleCort','autostart','false');
    checkTele:='true';
    checkCortanaback:='true';
    checkCortana:='true';
    interval:='10';
    autostart:='false';
  end
  else
  begin
    checkTele:=readFromRegistry(HKEY_CURRENT_USER,'SOFTWARE\AndHillDevelopment\KillTeleCort','checktelemetry');
    checkCortanaback:=readFromRegistry(HKEY_CURRENT_USER,'SOFTWARE\AndHillDevelopment\KillTeleCort','checkcortanabacktask');
    checkCortana:=readFromRegistry(HKEY_CURRENT_USER,'SOFTWARE\AndHillDevelopment\KillTeleCort','checkcortana');
    interval:=readFromRegistry(HKEY_CURRENT_USER,'SOFTWARE\AndHillDevelopment\KillTeleCort','interval');
    autostart:=readFromRegistry(HKEY_CURRENT_USER,'SOFTWARE\AndHillDevelopment\KillTeleCort','autostart');
  end;
end;

procedure TmainFrm.FormShow(Sender: TObject);
begin
  if autostart = 'true' then
    startprozess.Execute;
end;

procedure TmainFrm.helptopicsExecute(Sender: TObject);
begin
  HelpFrm.showmodal;
end;

procedure TmainFrm.homepageExecute(Sender: TObject);
begin
  ExecuteFile('http://andhilldev.de','','');
end;

procedure TmainFrm.infoExecute(Sender: TObject);
begin
  infoFrm.ShowModal;
end;

procedure TmainFrm.settingsExecute(Sender: TObject);
begin
  settingsFrm.ShowModal;
end;

procedure TmainFrm.startprozessExecute(Sender: TObject);
begin
  startprozess.Enabled:=false;
  stopprozess.Enabled:=true;
  settings.Enabled:=false;
  AdvOfficeStatusBar1.Panels[3].Progress.Max:=StrToInt(interval);
  AdvOfficeStatusBar1.Panels[3].Progress.Position:=0;
  action.Interval:=StrToInt(interval)*1000;
  timer.Enabled:=true;
  action.Enabled:=true;
  curtime:=0;
end;

procedure TmainFrm.stopprozessExecute(Sender: TObject);
begin
  startprozess.Enabled:=true;
  stopprozess.Enabled:=false;
  settings.Enabled:=true;
  AdvOfficeStatusBar1.Panels[3].Progress.Position:=0;
  timer.Enabled:=false;
  action.Enabled:=false;
  curtime:=0;
end;

procedure TmainFrm.timerTimer(Sender: TObject);
begin
  curtime:=curtime + 1;
  AdvOfficeStatusBar1.Panels[3].Progress.Position:=curtime;
end;

procedure TmainFrm.updateExecute(Sender: TObject);
begin
  WebUpdateWizard1.Execute();
end;

end.
