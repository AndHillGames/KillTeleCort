object infoFrm: TinfoFrm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Programminformationen'
  ClientHeight = 227
  ClientWidth = 435
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
    Width = 412
    Height = 19
    Caption = 'Kill Telemetry and Cortana Tasks V1.0.0 Build XXX'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 45
    Width = 273
    Height = 16
    Caption = 'Programmiert und entwickelt von Andreas Hiller'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 67
    Width = 223
    Height = 16
    Caption = 'Copyright '#169' 2017 AndHill Development'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 89
    Width = 135
    Height = 16
    Caption = 'Alle Rechte vorbehalten'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 120
    Width = 56
    Height = 16
    Caption = 'Kontakt:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 8
    Top = 142
    Width = 73
    Height = 16
    Caption = 'Homepage:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 90
    Top = 120
    Width = 111
    Height = 16
    Cursor = crHandPoint
    Caption = 'andhilldev@gmx.de'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsUnderline]
    ParentFont = False
    OnClick = Label7Click
  end
  object Label8: TLabel
    Left = 90
    Top = 142
    Width = 146
    Height = 16
    Cursor = crHandPoint
    Caption = 'http://www.andhilldev.de'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsUnderline]
    ParentFont = False
    OnClick = Label8Click
  end
  object BitBtn1: TBitBtn
    Left = 336
    Top = 185
    Width = 91
    Height = 34
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 0
  end
end
