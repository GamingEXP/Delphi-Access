unit UMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

type
  TMenu_Utama = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    MainMenu1: TMainMenu;
    Master1: TMenuItem;
    Barang1: TMenuItem;
    Pelanggan1: TMenuItem;
    ransaksi1: TMenuItem;
    Penjualan1: TMenuItem;
    Laporan1: TMenuItem;
    Laporanbarang1: TMenuItem;
    LaporanPenjualan1: TMenuItem;
    LaporanPelanggan1: TMenuItem;
    Aplikasi1: TMenuItem;
    Keluar1: TMenuItem;
    procedure Keluar1Click(Sender: TObject);
    procedure Barang1Click(Sender: TObject);
    procedure Penjualan1Click(Sender: TObject);
    procedure Pelanggan1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Menu_Utama: TMenu_Utama;

implementation

uses UBarang, Unit1, U_Pelanggan;

{$R *.dfm}

procedure TMenu_Utama.Keluar1Click(Sender: TObject);
begin
if MessageDlg ('Do you Want to Exit?', mtConfirmation,[mbYes, mbNo],0)=mryes then
Application.Terminate;
end;

procedure TMenu_Utama.Barang1Click(Sender: TObject);
begin
Form_Barang.Show;
end;

procedure TMenu_Utama.Penjualan1Click(Sender: TObject);
begin
    Form_Penjualan := TForm_Penjualan.Create(Self);
    Form_Penjualan.Show;
end;

procedure TMenu_Utama.Pelanggan1Click(Sender: TObject);
begin
    Form_Pelanggan.Show;
end;

end.
