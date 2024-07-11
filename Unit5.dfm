object Form5: TForm5
  Left = 280
  Top = 159
  Width = 686
  Height = 386
  Caption = 'Satuan'
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 69
    Top = 270
    Width = 125
    Height = 18
    Caption = 'MASUKAN NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 77
    Top = 43
    Width = 45
    Height = 18
    Caption = 'NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 74
    Top = 75
    Width = 85
    Height = 18
    Caption = 'DESKRIPSI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edt1: TEdit
    Left = 181
    Top = 39
    Width = 321
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 176
    Top = 73
    Width = 321
    Height = 21
    TabOrder = 1
  end
  object btnsimpan: TButton
    Left = 116
    Top = 105
    Width = 97
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 2
    OnClick = btnsimpanClick
  end
  object btnbatal: TButton
    Left = 448
    Top = 105
    Width = 97
    Height = 25
    Caption = 'BATAL'
    TabOrder = 3
  end
  object btnhapus: TButton
    Left = 341
    Top = 104
    Width = 97
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 4
    OnClick = btnhapusClick
  end
  object btnedit: TButton
    Left = 230
    Top = 105
    Width = 97
    Height = 25
    Caption = 'EDIT'
    TabOrder = 5
    OnClick = btneditClick
  end
  object DBGrid1: TDBGrid
    Left = 70
    Top = 135
    Width = 433
    Height = 120
    DataSource = DataModule4.dssatuan
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object edt3: TEdit
    Left = 211
    Top = 269
    Width = 289
    Height = 21
    TabOrder = 7
    OnChange = edt3Change
  end
  object btnlaporan: TButton
    Left = 557
    Top = 105
    Width = 75
    Height = 25
    Caption = 'LAPORAN'
    TabOrder = 8
  end
  object btnbaru: TButton
    Left = 30
    Top = 104
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 9
    OnClick = btnbaruClick
  end
end
