unit Unit4;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection;

type
  TDataModule4 = class(TDataModule)
    ZConnection: TZConnection;
    Zkategori: TZQuery;
    dskategori: TDataSource;
    dssatuan: TDataSource;
    Zsatuan: TZQuery;
    Zcostumer: TZQuery;
    dscostumer: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule4: TDataModule4;

implementation

{$R *.dfm}

end.
