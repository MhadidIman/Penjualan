object DataModule4: TDataModule4
  OldCreateOrder = False
  Left = 340
  Top = 201
  Height = 237
  Width = 324
  object ZConnection: TZConnection
    ControlsCodePage = cGET_ACP
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    Connected = True
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 3306
    Database = 'db_penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Users\User\Downloads\libmysql.dll'
    Left = 40
    Top = 24
  end
  object Zkategori: TZQuery
    Connection = ZConnection
    Active = True
    SQL.Strings = (
      'select * from kategori')
    Params = <>
    Left = 112
    Top = 24
  end
  object dskategori: TDataSource
    DataSet = Zkategori
    Left = 109
    Top = 80
  end
  object dssatuan: TDataSource
    DataSet = Zsatuan
    Left = 169
    Top = 80
  end
  object Zsatuan: TZQuery
    Connection = ZConnection
    Active = True
    SQL.Strings = (
      'Select * from satuan')
    Params = <>
    Left = 168
    Top = 33
  end
  object Zcostumer: TZQuery
    Connection = ZConnection
    Active = True
    SQL.Strings = (
      'Select * from kustomer')
    Params = <>
    Left = 211
    Top = 25
  end
  object dscostumer: TDataSource
    DataSet = Zcostumer
    Left = 221
    Top = 83
  end
end
