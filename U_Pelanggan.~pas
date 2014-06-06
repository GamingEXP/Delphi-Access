unit U_Pelanggan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB;

type
  TForm_Pelanggan = class(TForm)
    Button1: TButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    ed_id: TEdit;
    ed_nama: TEdit;
    ed_alamat: TMemo;
    btn_edit: TButton;
    btn_hapus: TButton;
    btn_baru: TButton;
    btn_keluar: TButton;
    btn_simpan: TButton;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    ed_cari: TEdit;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure btn_baruClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btn_simpanClick(Sender: TObject);
    procedure btn_editClick(Sender: TObject);
    procedure btn_hapusClick(Sender: TObject);
    procedure btn_keluarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  procedure bersih;
  procedure koneksitbl;
  procedure tampildata;
  end;

var
  Form_Pelanggan: TForm_Pelanggan;

implementation

uses UBarang, UMenu, Unit1;

{$R *.dfm}

procedure TForm_Pelanggan.bersih;
begin
ed_id.Text     := '';
ed_nama.Text   := '';
ed_alamat.Text := '';
ed_cari.Text   := '';

end;

procedure TForm_Pelanggan.FormCreate(Sender: TObject);
begin
    koneksitbl;
    bersih;
end;

procedure TForm_Pelanggan.btn_baruClick(Sender: TObject);
begin
    bersih;
end;

procedure TForm_Pelanggan.koneksitbl;
begin
    ADOQuery1.Connection := ADOConnection1;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Text   := 'SELECT * FROM tblpelanggan ORDER BY NamaPelanggan ASC';
    ADOQuery1.Close;
    ADOQuery1.Open;
    DataSource1.DataSet  := ADOQuery1;
    DBGrid1.DataSource   := DataSource1;
end;

procedure TForm_Pelanggan.tampildata;
begin
    if (ADOQuery1.RecordCount=0) then
    begin
        ShowMessage('Data Barang Kosong !!');
        Exit;
    end
    else
        ed_id.Text     := ADOQuery1.FieldValues ['IDPelanggan'];
        ed_nama.Text   := ADOQuery1.FieldValues ['NamaPelanggan'];
        ed_alamat.Text := ADOQuery1.FieldValues ['Alamat'];
end;

procedure TForm_Pelanggan.DBGrid1CellClick(Column: TColumn);
begin
    tampildata;
end;

procedure TForm_Pelanggan.btn_simpanClick(Sender: TObject);
begin
    if (ed_id.Text='') or (ed_nama.Text='') or (ed_alamat.Text='') then
    begin
        ShowMessage('Data Yang Diisi Harus Lengkap');
        Exit;
    end
    else
        ADOQuery1.SQL.Clear;
        ADOQuery1.SQL.Text := 'SELECT * FROM tblpelanggan WHERE IDPelanggan ='+QuotedStr(ed_id.Text);
        ADOQuery1.Close;
        ADOQuery1.Open;

        if (ADOQuery1.Recordset.RecordCount<>0) then
        begin
            ShowMessage('Data Barang Sudah Ada !!');
            koneksitbl;
            Exit;
        end
        else
            ADOQuery1.SQL.Clear;
            ADOQuery1.SQL.Text := 'INSERT INTO tblpelanggan VALUES ('+
                      QuotedStr(ed_id.Text)+','+
                      QuotedStr(ed_nama.Text)+','+
                      QuotedStr(ed_alamat.Text)+')';
            ADOQuery1.ExecSQL;
            koneksitbl;
            bersih;
end;

procedure TForm_Pelanggan.btn_editClick(Sender: TObject);
begin
    if (ed_id.Text='') or (ed_nama.Text='') or (ed_alamat.Text='') then
    begin
        ShowMessage('Pilih Data Yang Akan di Edit');
        exit;
    end
    else
        ADOQuery1.SQL.Clear;
        ADOQuery1.SQL.Text := 'UPDATE tblpelanggan SET NamaPelanggan ='+QuotedStr(ed_nama.Text)+','+
                              'Alamat ='+QuotedStr(ed_alamat.Text)+' WHERE IDPelanggan ='+
                              QuotedStr(ed_id.Text);
        ADOQuery1.ExecSQL;
        koneksitbl;
        bersih;
end;

procedure TForm_Pelanggan.btn_hapusClick(Sender: TObject);
begin
    if (ed_id.Text='') or (ed_nama.Text='') or (ed_alamat.Text='') then
    begin
        ShowMessage('Pilih Data Dulu Guys !!');
        Exit;
    end
    else
        ADOQuery1.SQL.Clear;
        ADOQuery1.SQL.Text := 'DELETE FROM tblpelanggan WHERE IDPelanggan='+QuotedStr(ed_id.Text);
        ADOQuery1.ExecSQL;
        koneksitbl;
        bersih;
end;

procedure TForm_Pelanggan.btn_keluarClick(Sender: TObject);
begin
    if(application.MessageBox('Apakah kamu yakin ingin keluar dari program ?','Konfirmasi',MB_YESNO)=ID_yes) then
    begin
      showmessage('Terimasih Sudah Menggunakan Program ini');
      close;
    end;
end;

end.
