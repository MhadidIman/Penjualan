object DataModule4: TDataModule4
  OldCreateOrder = False
  Left = 274
  Top = 274
  Height = 203
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
    LibraryLocation = 'libmysql.dll'
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
    Left = 112
    Top = 80
  end
end
