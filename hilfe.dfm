object helpFrm: ThelpFrm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Hilfe'
  ClientHeight = 512
  ClientWidth = 514
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 48
    Height = 25
    Caption = 'Hilfe'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 55
    Width = 115
    Height = 13
    Caption = 'Zweck der Software:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 74
    Width = 493
    Height = 77
    AutoSize = False
    Caption = 
      'Die Software wurde zu dem Zweck erschaffen, um die datenschutzbe' +
      'denklichen Prozesse wie die '#220'bertragung von Telemetriedaten an M' +
      'icrosoft zu unterbinden. Die Telemetriedaten'#252'bertragung hat als ' +
      'prim'#228'ren Zweck Probleme mit Softwareprodukten in Verbindung mit ' +
      'Windows 10 herauszufinden und ggf. L'#246'schungen anzubieten. Da hie' +
      'r aber auch pers'#246'nliche Daten '#252'bertragen werden ist dies aus uns' +
      'erer Sicht abzulehnen. Selbst wenn Sie '#252'ber die Registry diese F' +
      'unktion abgeschalten haben wird der Telemetriedatendienst gestar' +
      'tet. Dies hat '#196'hnlichkeit mit trojanischen Pferden. '
    WordWrap = True
  end
  object Label4: TLabel
    Left = 8
    Top = 165
    Width = 493
    Height = 91
    AutoSize = False
    Caption = 
      'Das selbe Bild bietet sich bei dem Dienst Cortana. Sie k'#246'nnen Co' +
      'rtana nur theoretisch '#252'ber die Registry deaktivieren. Dennoch wi' +
      'rd der Dienst gestartet z.B. dann wenn Sie neue Programme instal' +
      'lieren. Auch bietet sich wieder das Bild des trojanischen Pferde' +
      's. Au'#223'erdem produzieren Cortana, sowie der Telemetrie'#252'bertragung' +
      'sdienst eine hohe Auslastung des Datentr'#228'gers '#252'ber mehrere Minut' +
      'en hinweg. Aus diesem Grund haben wir dieses kleine Programm ges' +
      'chrieben. Es '#252'berpr'#252'ft in einem einstellbaren Intervall ob die D' +
      'ienste gestartet sind und beendet diese wenn dies der fall ist. ' +
      'Cortana ben'#246'tigt daf'#252'r mehrere Versuche bis es entg'#252'ltig aufgibt' +
      '.'
    Transparent = True
    WordWrap = True
  end
  object Label5: TLabel
    Left = 8
    Top = 275
    Width = 139
    Height = 13
    Caption = 'Benutzung der Software:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 8
    Top = 294
    Width = 493
    Height = 77
    AutoSize = False
    Caption = 
      'Wenn Sie die Software das erste mal starten ist diese noch inakt' +
      'iv. Klicken Sie deshalb beim ersten Start auf Programmeinstellun' +
      'gen und nehmen Sie die gew'#252'nschten Einstellungen vor. Aktivieren' +
      ' Sie die Dienste die beendet werden sollen und stellen Sie das I' +
      'ntervall ein. Soll die Software aktiviert starten sollen, dann s' +
      'etzen Sie den entsprechenden Haken. Best'#228'tigen Sie Ihre Einstell' +
      'ungen mit dem Button "Speichern". Haben Sie die Einstellungen vo' +
      'rgenommen, klicken Sie auf den Startbutton oder w'#228'hlen Sie im Me' +
      'n'#252' Prozess den Eintrag Prozess starten.'
    WordWrap = True
  end
  object Label7: TLabel
    Left = 8
    Top = 390
    Width = 249
    Height = 13
    Caption = 'Wenn soll man die Software nicht benutzen?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 8
    Top = 409
    Width = 493
    Height = 42
    AutoSize = False
    Caption = 
      'Sie sollten die Software nicht benutzen, wenn Sie die Dienste nu' +
      'tzen m'#246'chten oder wenn Sie uns nicht vertrauen, denn Software is' +
      't nicht Zertifiert und ben'#246'tigt aber Administratorrechte. Damit ' +
      'Sie sehen was die Software tut. Finden Sie den Quellcode unter: ' +
      'https://github.com/AndHillGames/KillTeleCort'
    WordWrap = True
  end
  object BitBtn1: TBitBtn
    Left = 415
    Top = 470
    Width = 86
    Height = 31
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 0
  end
end
