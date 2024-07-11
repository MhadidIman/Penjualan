object Form2: TForm2
  Left = 283
  Top = 222
  Width = 538
  Height = 349
  Caption = 'LOGIN'
  Color = clGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 133
    Top = 91
    Width = 92
    Height = 19
    Caption = 'USERNAME'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 133
    Top = 131
    Width = 95
    Height = 19
    Caption = 'PASSWORD'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 245
    Top = 91
    Width = 145
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 133
    Top = 187
    Width = 97
    Height = 33
    Caption = 'LOGIN'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit2: TEdit
    Left = 245
    Top = 131
    Width = 145
    Height = 21
    TabOrder = 2
  end
  object Button2: TButton
    Left = 261
    Top = 187
    Width = 97
    Height = 33
    Caption = 'CLOSE'
    TabOrder = 3
    OnClick = Button1Click
  end
end
