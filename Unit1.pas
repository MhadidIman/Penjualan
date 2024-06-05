unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    fi1: TMenuItem;
    DataMaster1: TMenuItem;
    ransaksi1: TMenuItem;
    Laporan1: TMenuItem;
    Kategori1: TMenuItem;
    Satuan1: TMenuItem;
    Suplier1: TMenuItem;
    Kustomer1: TMenuItem;
    Login1: TMenuItem;
    Logout1: TMenuItem;
    pENJUALAN1: TMenuItem;
    Pembelian1: TMenuItem;
    LaporanPenjualan1: TMenuItem;
    LaporanStokBarang1: TMenuItem;
    LaporanBarang1: TMenuItem;
    procedure Login1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Kategori1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3;

{$R *.dfm}

procedure TForm1.Login1Click(Sender: TObject);
begin
Form2.Show;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
MainMenu1.Items[1].Visible:=False;
MainMenu1.Items[2].Visible:=False;
MainMenu1.Items[3].Visible:=False;
end;

procedure TForm1.Kategori1Click(Sender: TObject);
begin
Form3.Show;
end;

end.
