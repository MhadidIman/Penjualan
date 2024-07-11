unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm5 = class(TForm)
    edt1: TEdit;
    edt2: TEdit;
    btnsimpan: TButton;
    btnbatal: TButton;
    btnhapus: TButton;
    btnedit: TButton;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    edt3: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    btnlaporan: TButton;
    btnbaru: TButton;
    procedure btnsimpanClick(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure btnhapusClick(Sender: TObject);
    procedure btnbaruClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure posisiawal;
    procedure bersih;
    procedure edt3Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  a: string;

implementation

uses Unit4, Unit9;

{$R *.dfm}

procedure TForm5.btnsimpanClick(Sender: TObject);
begin
if edt1.Text = '' then
begin
  ShowMessage('Nama Satuan Tidak Boleh Kosong!');
end else if DataModule4.Zsatuan.Locate('name', edt1.Text, []) then
begin
  ShowMessage('Nama Satuan ' + edt1.Text + ' Sudah Ada Didalam Sistem');
end else
begin
  with DataModule4.Zsatuan do
  begin
    SQL.Clear;
    SQL.Add('insert into satuan values(null, "' + edt1.Text + '", "' + edt2.Text + '")');
    ExecSQL;
    SQL.Clear;
    SQL.Add('select * from satuan');
    Open;
  end;
  ShowMessage('Data Berhasil Disimpan!');
end;
end;

procedure TForm5.btneditClick(Sender: TObject);
begin
if edt1.Text = '' then
begin
ShowMessage('Nama Satuan Tidak Boleh Kosong!');
end else


begin //kode update
with DataModule4.Zsatuan do
begin
SQL.Clear;
SQL.Add('update satuan set name="'+edt1.text+'", diskripsi="'+edt2.text+'" where id= "'+a+'"');
ExecSQL ;

SQL.Clear;
SQL.Add('select * from satuan');
Open;
end;
ShowMessage('Data Berhasil Diupdate!');
end;
posisiawal;
end;


procedure TForm5.btnhapusClick(Sender: TObject);
begin
begin  //kode delete
if MessageDlg('Apakah Anda Yakin Menghapus Data ini',mtWarning,[mbYes,mbNo],0)=mryes then
begin
with DataModule4.Zsatuan do
begin
SQL.Clear;
SQL.Add('delete from satuan where id= "'+a+'"');
ExecSQL ;
SQL.Clear;
SQL.Add('select * from satuan');
Open;
end;
ShowMessage('Data Berhasil DiDelete!');
end else
begin
ShowMessage('Data Batal Dihapus!');
end;
posisiawal;
end;
end;

procedure TForm5.btnbaruClick(Sender: TObject);
begin
btnsimpan.Enabled:= True;
btnedit.Enabled:= False;
btnhapus.Enabled:= False;
btnlaporan.Enabled:= False;
btnbaru.Enabled:= True;
btnbatal.Enabled:= False;
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
end;
procedure TForm5.DBGrid1CellClick(Column: TColumn);
begin
edt1.Text:= DataModule4.Zsatuan.Fields[1].AsString;
edt2.Text:= DataModule4.Zsatuan.Fields[2].AsString;
a:= DataModule4.Zsatuan.Fields[0].AsString;
edt1.Enabled:= True;
edt2.Enabled:= True;
btnedit.Enabled:= True;
btnhapus.Enabled:= True;
btnbaru.Enabled:= True;
btnbatal.Enabled:= False;
btnsimpan.Enabled:= False;
end;

procedure TForm5.posisiawal;
begin
bersih;
btnsimpan.Enabled:= false;
btnedit.Enabled:= false;
btnhapus.Enabled:= false;
btnbaru.Enabled:= True;
btnbatal.Enabled:= false;
edt1.Clear;
edt1.Enabled:= false;
edt2.Clear;
edt2.Enabled:= false;
end;

procedure TForm5.bersih;
begin
 edt1.Clear;
 edt2.Clear;
end;

procedure TForm5.edt3Change(Sender: TObject);
begin
  with DataModule4.Zsatuan do
  begin
    SQL.Clear;
    SQL.Add('select * from satuan where name like "%'+edt3.Text+'%"');
    Open;
  end;
end;

end.
