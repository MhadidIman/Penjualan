object Form3: TForm3
  Left = 329
  Top = 199
  Width = 557
  Height = 342
  Caption = 'KATEGORI'
  Color = clMaroon
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 61
    Top = 27
    Width = 39
    Height = 18
    Caption = 'NAME'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 101
    Top = 251
    Width = 120
    Height = 18
    Caption = 'MASUKKAN NAME'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 149
    Top = 27
    Width = 337
    Height = 21
    TabOrder = 0
  end
  object bsimpan: TButton
    Left = 149
    Top = 67
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 1
    OnClick = bsimpanClick
  end
  object bubah: TButton
    Left = 237
    Top = 67
    Width = 75
    Height = 25
    Caption = 'UBAH'
    TabOrder = 2
    OnClick = bubahClick
  end
  object bhapus: TButton
    Left = 325
    Top = 67
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 3
    OnClick = bhapusClick
  end
  object Edit2: TEdit
    Left = 229
    Top = 251
    Width = 153
    Height = 21
    TabOrder = 4
  end
  object Button4: TButton
    Left = 389
    Top = 251
    Width = 97
    Height = 25
    Caption = 'CARI'
    TabOrder = 5
  end
  object Bbaru: TButton
    Left = 53
    Top = 67
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 6
    OnClick = BbaruClick
  end
  object bbatal: TButton
    Left = 413
    Top = 67
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 7
  end
  object DBGrid1: TDBGrid
    Left = 53
    Top = 115
    Width = 433
    Height = 113
    DataSource = DataModule4.dssatuan
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnDblClick = DBGrid1DblClick
  end
end
