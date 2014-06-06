object Form_Pelanggan: TForm_Pelanggan
  Left = 330
  Top = 103
  Width = 598
  Height = 548
  Caption = 'Form Pelanggan'
  Color = clGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 561
    Height = 41
    Caption = 'Form Pelanggan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 50
    Width = 561
    Height = 447
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 18
      Width = 126
      Height = 24
      Caption = 'ID Pelanggan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 100
      Width = 70
      Height = 24
      Caption = 'Alamat '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 16
      Top = 61
      Width = 161
      Height = 24
      Caption = 'Nama Pelanggan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 404
      Width = 210
      Height = 24
      Caption = 'Cari Nama Pelanggan '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ed_id: TEdit
      Left = 192
      Top = 22
      Width = 121
      Height = 21
      TabOrder = 0
      Text = 'ed_id'
    end
    object ed_nama: TEdit
      Left = 192
      Top = 64
      Width = 353
      Height = 21
      TabOrder = 1
      Text = 'ed_nama'
    end
    object ed_alamat: TMemo
      Left = 192
      Top = 104
      Width = 353
      Height = 89
      Lines.Strings = (
        'ed_alamat')
      TabOrder = 2
    end
    object btn_edit: TButton
      Left = 192
      Top = 201
      Width = 75
      Height = 25
      Caption = 'EDIT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btn_editClick
    end
    object btn_hapus: TButton
      Left = 288
      Top = 201
      Width = 75
      Height = 25
      Caption = 'HAPUS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = btn_hapusClick
    end
    object btn_baru: TButton
      Left = 376
      Top = 201
      Width = 75
      Height = 25
      Caption = 'BARU'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = btn_baruClick
    end
    object btn_keluar: TButton
      Left = 472
      Top = 201
      Width = 75
      Height = 25
      Caption = 'KELUAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = btn_keluarClick
    end
    object btn_simpan: TButton
      Left = 16
      Top = 201
      Width = 75
      Height = 25
      Caption = 'SIMPAN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = btn_simpanClick
    end
    object DBGrid1: TDBGrid
      Left = 16
      Top = 237
      Width = 529
      Height = 145
      TabOrder = 8
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
    end
    object ed_cari: TEdit
      Left = 240
      Top = 408
      Width = 305
      Height = 21
      TabOrder = 9
      Text = 'ed_cari'
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\MY DOCUMENT\PERK' +
      'ULIAHAN\SEMESTER 6\PEMROGRAMAN BASIS DATA\Program_Penjualan - Ac' +
      'cess\Data Base\dbpenjualan.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 408
    Top = 298
  end
  object ADOQuery1: TADOQuery
    Parameters = <>
    Left = 456
    Top = 298
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 504
    Top = 298
  end
end
