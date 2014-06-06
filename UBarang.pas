unit UBarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, DB, ADODB;

type
  TForm_Barang = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edkode: TEdit;
    Edbarang: TEdit;
    Edharga: TEdit;
    Edstok: TEdit;
    DBGrid1: TDBGrid;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Label6: TLabel;
    Edcari: TEdit;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    btn_keluar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure EdcariChange(Sender: TObject);
    procedure btn_keluarClick(Sender: TObject);
  private
    { Private declarations }
  public

  Procedure koneksiTbl;
  Procedure tampildata;
  Procedure bersih;
    { Public declarations }
  end;

var
  Form_Barang: TForm_Barang;

implementation

uses UMenu, Unit1, U_Pelanggan;

{$R *.dfm}

procedure TForm_Barang.bersih;
begin
Edkode.Clear;
Edbarang.Text := '';
Edharga.Text :='';
Edstok.Text :='';
Edcari.Text := '';

end;

procedure TForm_Barang.koneksiTbl;
begin
    ADOQuery1.Connection :=ADOConnection1;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Text :='SELECT * FROM tblbarang ORDER BY NamaBarang ASC';
    ADOQuery1.Close;
    ADOQuery1.Open;
    DataSource1.DataSet :=ADOQuery1;
    DBGrid1.DataSource := DataSource1;
end;

procedure TForm_Barang.tampildata;
begin
    if (ADOQuery1.RecordCount=0) then
    begin
         ShowMessage('Data Barang Kosong !!');
         exit;
    end
    else
        Edkode.Text   := ADOQuery1.FieldValues['KodeBrg'];
        Edbarang.Text := ADOQuery1.FieldValues['NamaBarang'];
        Edharga.Text  := ADOQuery1.FieldValues['Harga'];
        Edstok.Text   := ADOQuery1.FieldValues['Stock'];


end;

procedure TForm_Barang.FormCreate(Sender: TObject);
begin
koneksiTbl;
bersih;
end;

procedure TForm_Barang.Button1Click(Sender: TObject);
begin
bersih;
end;

procedure TForm_Barang.Button2Click(Sender: TObject);
begin
//listing tombol simpan
if (Edkode.Text='')OR (Edbarang.Text ='') or (Edharga.Text='') then
    begin
    ShowMessage('Data Harus Diisi Lengkap !!');
    exit;
    end
    else
        ADOQuery1.SQL.Clear;
        ADOQuery1.SQL.Text := 'SELECT * FROM TBLBARANG WHERE KODEBRG ='+QuotedStr(Edkode.Text);
        ADOQuery1.Close;
        ADOQuery1.Open;

        IF (ADOQuery1.Recordset.RecordCount<>0) THEN
        begin
              ShowMessage('Data Barang Sudah Ada..');
              koneksiTbl;
              exit;
        end
        else
              ADOQuery1.SQL.Clear;
              ADOQuery1.SQL.Text :='INSERT INTO TBLBARANG VALUES('+
                        QuotedStr(Edkode.Text)+','+
                        QuotedStr(Edbarang.Text)+','+
                        QuotedStr(Edharga.Text)+','+
                        QuotedStr(Edstok.Text)+')';
              ADOQuery1.ExecSQL;
              koneksiTbl;     //untuk refresh
              bersih;

end;

procedure TForm_Barang.DBGrid1CellClick(Column: TColumn);
begin
tampildata;
end;

procedure TForm_Barang.Button4Click(Sender: TObject);
begin
//LISTING HAPUS
  if(Edkode.Text='')or(Edbarang.Text='')or(Edharga.Text='') then
  begin
    ShowMessage('Pilih Data Dulu Guys....');
    exit;
  end
  else
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Text :='DELETE FROM tblbarang WHERE KodeBrg='+QuotedStr(Edkode.Text);
    ADOQuery1.ExecSQL;
    koneksiTbl;
    bersih;
end;

procedure TForm_Barang.Button3Click(Sender: TObject);
begin
//Tombol Edit
  if (edkode.Text='')or(edbarang.Text='')or(edharga.Text='')then
    begin
      ShowMessage('Pilih Data Yang Akan Diedit');
      exit;
    end
    else
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Text:='UPDATE tblbarang SET NamaBarang='+QuotedStr(edbarang.Text)+','+
                        'Harga  ='+QuotedStr(edharga.Text)+','+
                        'Stock  ='+QuotedStr(Edstok.Text)+' WHERE KodeBrg='+
                        QuotedStr(edkode.Text);
    ADOQuery1.ExecSQL;
    koneksiTbl;
    bersih;
end;

procedure TForm_Barang.EdcariChange(Sender: TObject);
begin
  //Listing Cari
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Text :='SELECT * FROM tblbarang WHERE NamaBarang LIKE "%'+Edcari.Text+'%"';
  ADOQuery1.Close;
  ADOQuery1.Open;
  tampildata;
end;

procedure TForm_Barang.btn_keluarClick(Sender: TObject);
begin
if(application.MessageBox('Apakah kamu yakin ingin keluar dari program ?','Konfirmasi',MB_YesNo)=ID_yes) then
    begin
      showmessage('Terimasih Sudah Menggunakan Program ini');
      close
    end;
end;

end.
