unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids, DB, ADODB, jpeg, ExtCtrls;

type
  TForm_Penjualan = class(TForm)
    Button1: TButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    btn_simpan: TButton;
    btn_keluar: TButton;
    btn_baru: TButton;
    btn_cetak: TButton;
    btn_delete: TButton;
    DBGrid1: TDBGrid;
    dtm_tanggal: TDateTimePicker;
    ed_nojual: TEdit;
    ed_id: TEdit;
    ed_pelanggan: TEdit;
    ed_alamat: TEdit;
    Button7: TButton;
    ed_kode: TEdit;
    ed_barang: TEdit;
    ed_harga: TEdit;
    ed_qty: TEdit;
    ed_sub: TEdit;
    ADOConnection1: TADOConnection;
    ado_pelanggan: TADOQuery;
    ado_barang: TADOQuery;
    ado_penjualan: TADOQuery;
    DataSource1: TDataSource;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Button2: TButton;
    procedure btn_baruClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_keluarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  procedure koneksi_tblpenjulan;
  procedure koneksi_tblpelanggan;
  procedure koneksi_tblbarang;
  procedure bersih;
  procedure tampildata;
  end;

var
  Form_Penjualan: TForm_Penjualan;

implementation

uses UBarang, UMenu, U_Pelanggan;

{$R *.dfm}

{ TForm_Penjualan }

procedure TForm_Penjualan.bersih;
begin
ed_nojual.Text    := '';
ed_id.Text        := '';
ed_pelanggan.Text := '';
ed_alamat.Text    := '';
ed_kode.Text      := '';
ed_barang.Text    := '';
ed_harga.Text     := '';
ed_qty.Text       := '';
ed_sub.Text       := '';

end;

procedure TForm_Penjualan.koneksi_tblbarang;
begin
//koneksi tabel barang
    ado_barang.Connection := ADOConnection1;
    ado_barang.SQL.Clear;
    ado_barang.SQL.Text := 'select * from tblbarang';
    ado_barang.Close;
    ado_barang.Open;
end;

procedure TForm_Penjualan.koneksi_tblpelanggan;
begin
//koneksi tabel pelanggan
    ado_pelanggan.Connection := ADOConnection1;
    ado_pelanggan.SQL.Clear;
    ado_pelanggan.SQL.Text := 'select * from tblpelanggan';
    ado_pelanggan.Close;
    ado_pelanggan.Open;
end;

procedure TForm_Penjualan.koneksi_tblpenjulan;
begin
//koneksi tabel penjualan
    ado_penjualan.Connection := ADOConnection1;
    ado_penjualan.SQL.Clear;
    ado_penjualan.SQL.Text := 'SELECT NoJual, tanggal, tblpenjualan.IDPelanggan,'+
                              'NamaPelanggan, Alamat, tblpenjualan.KodeBrg, NamaBarang,'+
                              'Harga, stock, qty, Total FROM tblpenjualan, tblpelanggan,'+
                              'tblbarang WHERE tblpenjualan.idpelanggan = tblpelanggan.idpelanggan AND tblpenjualan.kodeBrg = tblbarang.kodebrg';
    ado_penjualan.Close;
    ado_penjualan.Open;

    DataSource1.DataSet := ado_penjualan;
    DBGrid1.DataSource  := DataSource1;
end;

procedure TForm_Penjualan.tampildata;
begin

end;

procedure TForm_Penjualan.btn_baruClick(Sender: TObject);
begin
bersih;
end;

procedure TForm_Penjualan.FormCreate(Sender: TObject);
begin
koneksi_tblpenjulan;
bersih;
end;

procedure TForm_Penjualan.btn_keluarClick(Sender: TObject);
begin
if(application.MessageBox('Apakah kamu yakin ingin keluar dari program ?','Konfirmasi',MB_YesNo)=ID_yes) then
    begin
      showmessage('Terimasih Sudah Menggunakan Program ini');
      close
    end;
end;

end.

 