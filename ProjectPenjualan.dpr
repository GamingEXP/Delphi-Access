program ProjectPenjualan;

uses
  Forms,
  UMenu in 'UMenu.pas' {Menu_Utama},
  UBarang in 'UBarang.pas' {Form_Barang},
  Unit1 in 'Unit1.pas' {Form_Penjualan},
  U_Pelanggan in 'U_Pelanggan.pas' {Form_Pelanggan};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMenu_Utama, Menu_Utama);
  Application.CreateForm(TForm_Barang, Form_Barang);
  Application.CreateForm(TForm_Penjualan, Form_Penjualan);
  Application.CreateForm(TForm_Pelanggan, Form_Pelanggan);
  Application.Run;
end.
