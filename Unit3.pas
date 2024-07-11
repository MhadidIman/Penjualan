unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    bsimpan: TButton;
    bubah: TButton;
    bhapus: TButton;
    Label2: TLabel;
    Edit2: TEdit;
    Button4: TButton;
    Bbaru: TButton;
    bbatal: TButton;
    DBGrid1: TDBGrid;
    procedure bsimpanClick(Sender: TObject);
    procedure bubahClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure posisiawal;
    procedure bersih;
    procedure BbaruClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure bhapusClick(Sender: TObject);


  private
    { Private declarations }
  public
    
  end;

var
  Form3: TForm3;
  a: string;

implementation

uses
  Unit4;

{$R *.dfm}

procedure TForm3.bsimpanClick(Sender: TObject);
begin
if Edit1.Text = '' then
begin
  ShowMessage('Nama Kategori Tidak Boleh Kosong!');
end else
  if DataModule4.Zkategori.Locate('name',Edit1.Text,[]) then
begin
  ShowMessage('Nama Kategori '+Edit1.Text+' Sudah Ada Didalam Sistem');
end else
Begin // simpan
  with DataModule4.Zkategori do
  begin
  SQL.Clear;
  SQL.Add('insert into kategori values(null,"'+Edit1.Text+'")');
  ExecSQL ;
  SQL.Clear;
  SQL.Add('select * from kategori');
  Open;
end;
  ShowMessage('Data Berhasil Disimpan!');
end;
posisiawal;

end;

procedure TForm3.bubahClick(Sender: TObject);
begin
  if Edit1.Text = '' then
begin
  ShowMessage('Nama Kategori Tidak Boleh Kosong!');
end else
  if Edit1.Text = DataModule4.Zkategori.Fields[1].AsString then
begin
  ShowMessage('Nama Kategori '+Edit1.Text+' Tidak Ada Perubahan');
end else
begin //kode update
  with DataModule4.Zkategori do
begin
  SQL.Clear;
  SQL.Add('update kategori set name="'+Edit1.text+'" where id= "'+a+'"');
  ExecSQL ;

  SQL.Clear;
  SQL.Add('select * from kategori');
  Open;
end;
  ShowMessage('Data Berhasil Diupdate!');
end;
  posisiawal;
end;
  

procedure TForm3.BbaruClick(Sender: TObject);
begin
  bersih;
  Bbaru.Enabled:=False;
  bsimpan.Enabled:=True;
  bubah.Enabled:=False;
  bhapus.Enabled:=False;
  bbatal.Enabled:=True;
  Edit1.Enabled:=True;
end;

procedure TForm3.DBGrid1DblClick(Sender: TObject);
begin
Edit1.Text:= DataModule4.Zkategori.Fields[1].AsString;
a:= DataModule4.Zkategori.Fields[0].AsString;

  Edit1.Enabled:=False;
  Bbaru.Enabled:=False;
  bsimpan.Enabled:=False;
  bubah.Enabled:=True;
  bhapus.Enabled:=True;
  bbatal.Enabled:=False;

end;

procedure TForm3.posisiawal;
begin
  Bbaru.Enabled:=True;
  bsimpan.Enabled:=False;
  bubah.Enabled:=False;
  bhapus.Enabled:=False;
  bbatal.Enabled:=False;
  Edit1.Clear;
  Edit1.Enabled:=False;
end;

procedure TForm3.bersih;
begin
Edit1.Clear;
end;

procedure TForm3.DBGrid1CellClick(Column: TColumn);
begin
  Edit1.Text:= DataModule4.Zkategori.Fields[1].AsString;
  a:= DataModule4.Zkategori.Fields[0].AsString;

  Edit1.Enabled:= False;
  Bbaru.Enabled:= False;
  bsimpan.Enabled:=False;
  bubah.Enabled:= True;
  bhapus.Enabled:= True;
  bbatal.Enabled:= False;
end;

procedure TForm3.bhapusClick(Sender: TObject);
begin
  if MessageDlg('Apakah Anda Yakin Menghapus Data ini',mtWarning,[mbYes,mbNo],0)=mryes then
begin
  with DataModule4.Zkategori do
begin
  SQL.Clear;
  SQL.Add('delete from kategori where id= "'+a+'"');
  ExecSQL ;

  SQL.Clear;
  SQL.Add('select * from kategori');
Open;
end;
  ShowMessage('Data Berhasil DiDelete!');
end else
begin
  ShowMessage('Data Batal Dihapus!');
end;
posisiawal;
end;

end.
