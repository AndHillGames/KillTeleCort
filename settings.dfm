object settingsFrm: TsettingsFrm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Programmeinstellungen'
  ClientHeight = 311
  ClientWidth = 457
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  DesignSize = (
    457
    311)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 441
    Height = 28
    AutoSize = False
    Caption = 
      'Mit diesem Dialog kannst Du entscheiden welche Tasks beendet wer' +
      'den sollen und in welchen Intervall dies passieren soll.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 50
    Width = 441
    Height = 105
    Caption = 'Tasks'
    TabOrder = 0
    object checkboxTele: TCheckBox
      Left = 15
      Top = 25
      Width = 406
      Height = 17
      Caption = 'Microsoft Compatiblity Telemetry (CompatTelRunner.exe)'
      TabOrder = 0
    end
    object checkboxCortanaBack: TCheckBox
      Left = 15
      Top = 48
      Width = 406
      Height = 17
      Caption = 'Cortana Background Task (taskhostw.exe)'
      TabOrder = 1
    end
    object checkboxCortana: TCheckBox
      Left = 15
      Top = 71
      Width = 406
      Height = 17
      Caption = 'Cortana (SearchUI.exe)'
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 170
    Width = 441
    Height = 91
    Caption = 'Timereinstellungen'
    TabOrder = 1
    object Label2: TLabel
      Left = 15
      Top = 30
      Width = 52
      Height = 13
      Caption = 'Intervall:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 135
      Top = 30
      Width = 98
      Height = 13
      Caption = 'x 1000 Millisekunden'
    end
    object spinInterval: TSpinEdit
      Left = 73
      Top = 25
      Width = 56
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxValue = 0
      MinValue = 0
      ParentFont = False
      TabOrder = 0
      Value = 0
    end
    object checkboxAutoStart: TCheckBox
      Left = 15
      Top = 53
      Width = 406
      Height = 17
      Caption = 'Timer automatisch starten wenn die Anwendung gestartet wird'
      TabOrder = 1
    end
  end
  object BitBtn1: TBitBtn
    Left = 271
    Top = 271
    Width = 86
    Height = 31
    Anchors = [akLeft, akRight, akBottom]
    Caption = 'Speichern'
    DoubleBuffered = True
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      1800000000000003000000000000000000000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FF6F936D41813B2F7F272F7F2741813B6F936DFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6691651B9B153CA73281B97436
      B02C29BE2029BE2029BE201B9B15689367FF00FFFF00FFFF00FFFF00FFFF00FF
      3E833E06BF041EAC1BDCE5CCFEFEEAA9CF9B06C50406C50406C50406C50406BF
      043E833EFF00FFFF00FFFF00FF66916502B50112A710D0DEC4FEFEEAFEFEEAFE
      FEEA2FAD2B06BF0406BF0406BF0406BF0402B501669165FF00FFFF00FF38952C
      0D9D0CC5D7BBFEFEF0FEFEF0FEFEEAFEFEEAB3D1A503A90203A90203A90203A9
      0203A902038C02FF00FF749771509F40BACFB2FEFEF0FEFEF0D0DEC4B4CAA8FE
      FEEAFEFEEA41A03B059E03059E03059E03059E03059E036F936D4887416FA866
      FEFEF0FFFFF5D6E1CC1E8C1A378C32FEFEF0FEFEEACADBBB038C020791040791
      040791040791042875251E8C1A1AB51570BC7386C181157F12088205087E05AC
      C3A2FEFEF0FEFEF0609F580882050882050882050882050964080C940C0FCE0F
      16D0171ED11F1EAC1B0A75060A7506287525F7F8E9FEFEEAE4EBD51474110A75
      060A75060A75060A5C0831933121D22229D42A31D53239D73A31BB3108820508
      7E0580A878FEFEF0FEFEF08CB282097A06097A06097A06296C276D9B6D31D532
      3CD83E44DA464DDB4E58DE5A54D55526A625088205D6E1CCFEFEF0FEFEEA318F
      2C038C02088F05688F68FF00FF38B43A50DC5258DE5A60DF6267E16A6FE2727B
      E57E62D46456A653FEFEEAFEFEF0C5D8B8079D04068604FF00FFFF00FF709970
      5FD9616BE26E6FE2727BE57E83E6868AE88E92EA9598E99C9CBD97FEFEF0C5D7
      BB03A902669165FF00FFFF00FFFF00FF588E5979DE7C83E68692EA9596EA999E
      ECA1A6EEAAAEEFB2ACE6AF95C49798CD9B518A51FF00FFFF00FFFF00FFFF00FF
      FF00FF70997070BC73A1EDA5A9EEADB1F0B5B9F2BDC1F3C5C8F5CC8DC2907497
      71FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF799B796D9B6D6D
      A57070A572709970799B79FF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = BitBtn1Click
    ExplicitTop = 252
  end
  object BitBtn2: TBitBtn
    Left = 363
    Top = 271
    Width = 86
    Height = 31
    Anchors = [akLeft, akRight, akBottom]
    Caption = 'Abbrechen'
    DoubleBuffered = True
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      1800000000000003000000000000000000000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FF6868C32626AA06069E06069E2626AA6868C3FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6565C40000A60000A60000A600
      00A60000A80000A80000A80000A86565C4FF00FFFF00FFFF00FFFF00FFFF00FF
      3E3EBA0000B00000B00000B00000A82020B32020B30000A80000B00000BB0000
      B03E3EBAFF00FFFF00FFFF00FF6565CA0000BB0000BB0000BBFF00FFFF00FFFF
      00FFFF00FFFF00FF2A2ABA0000C00000C00000C06565CAFF00FFFF00FF0000C0
      0000C00707C0FF00FFFF00FFFF00FFFF00FFFF00FF7878D10000CD0000CD0000
      CD0000CD0000CDFF00FF6868D10000D10000D1FF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FF0000D10000D12222CB6969CE0000D10000DD6868D12222CB0000DD
      0000D1FF00FFFF00FFFF00FFFF00FFFF00FF0000DD0000E51D1DD1FF00FFFF00
      FF0000DD0000E52626D30000D10606EB2626D3FF00FFFF00FFFF00FFFF00FF00
      00E50606EB1919DAFF00FFFF00FFFF00FF2626D30000F00000DD0606DD0000F0
      2020DEFF00FFFF00FFFF00FF0606EB0101FA1515E1FF00FFFF00FFFF00FFFF00
      FF2020DE0101FA0606E22727DF0101FA0606EBFF00FFFF00FF0000F00505FC16
      16E8FF00FFFF00FFFF00FFFF00FFFF00FF0C0CEC0505FC2D2DE16B6BDA1414FC
      1414FC4E4ED21717F01717FB1F1FE8FF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FF1E1EFA1E1EFA7474D8FF00FF2222F01E1EFA2828F92828F92E2EEAFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FF2E2EEA3030F82E2EEAFF00FFFF00FF7474D8
      3939F63939F63939F66363D2FF00FFFF00FFFF00FFFF00FFFF00FF3D3DE74141
      F44141F47474D8FF00FFFF00FFFF00FF5A5AD64C4CF34C4CF34C4CF34545E351
      51DB5151DB4545E35252F25252F25252F26363D2FF00FFFF00FFFF00FFFF00FF
      FF00FF7878D15555E76161F06161F06161F06161F06161F06464EF5B5BE77D7D
      D7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8383D86565D859
      59D85959D86B6BDA8383D8FF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = BitBtn2Click
    ExplicitTop = 252
  end
  object XPColorMap1: TXPColorMap
    HighlightColor = clWhite
    BtnSelectedColor = clBtnFace
    UnusedColor = clWhite
    Left = 305
    Top = 130
  end
  object AdvFormStyler1: TAdvFormStyler
    Metro = True
    Style = tsOffice2010Silver
    Left = 365
    Top = 45
  end
end
