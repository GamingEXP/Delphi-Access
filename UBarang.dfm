object Form_Barang: TForm_Barang
  Left = 438
  Top = 150
  Width = 822
  Height = 618
  Caption = 'Form_Barang'
  Color = clHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 793
    Height = 81
    Caption = 'FORM DATA BARANG'
    Color = clCream
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 8
    Top = 96
    Width = 793
    Height = 201
    Color = clCream
    TabOrder = 1
    object Label2: TLabel
      Left = 19
      Top = 42
      Width = 90
      Height = 16
      Caption = 'Kode barang'
    end
    object Label3: TLabel
      Left = 19
      Top = 82
      Width = 51
      Height = 16
      Caption = 'Barang'
    end
    object Label4: TLabel
      Left = 19
      Top = 124
      Width = 44
      Height = 16
      Caption = 'Harga'
    end
    object Label5: TLabel
      Left = 19
      Top = 165
      Width = 32
      Height = 16
      Caption = 'Stok'
    end
    object Label6: TLabel
      Left = 544
      Top = 10
      Width = 128
      Height = 16
      Caption = 'Cari Nama Barang'
    end
    object Edkode: TEdit
      Left = 171
      Top = 40
      Width = 105
      Height = 24
      TabOrder = 0
      Text = 'Edkode'
    end
    object Edbarang: TEdit
      Left = 171
      Top = 80
      Width = 257
      Height = 24
      TabOrder = 1
      Text = 'Edbarang'
    end
    object Edharga: TEdit
      Left = 171
      Top = 120
      Width = 121
      Height = 24
      TabOrder = 2
      Text = 'Edharga'
    end
    object Edstok: TEdit
      Left = 171
      Top = 160
      Width = 97
      Height = 24
      TabOrder = 3
      Text = 'Edstok'
    end
    object Edcari: TEdit
      Left = 544
      Top = 34
      Width = 201
      Height = 24
      TabOrder = 4
      Text = 'Edcari'
      OnChange = EdcariChange
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 400
    Width = 793
    Height = 169
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnCellClick = DBGrid1CellClick
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 304
    Width = 793
    Height = 89
    Color = clBtnFace
    ParentColor = False
    TabOrder = 3
    object Button1: TButton
      Left = 16
      Top = 24
      Width = 113
      Height = 49
      Caption = 'Baru'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 184
      Top = 24
      Width = 113
      Height = 49
      Caption = 'Simpan'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 352
      Top = 24
      Width = 113
      Height = 49
      Caption = 'Edit'
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 512
      Top = 24
      Width = 113
      Height = 49
      Caption = 'Hapus'
      TabOrder = 3
      OnClick = Button4Click
    end
    object btn_keluar: TButton
      Left = 680
      Top = 24
      Width = 97
      Height = 49
      Caption = 'Keluar'
      TabOrder = 4
      OnClick = btn_keluarClick
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=D:\MY' +
      ' DOCUMENT\PERKULIAHAN\SEMESTER 6\PEMROGRAMAN BASIS DATA\Program_' +
      'Penjualan - Access\Data Base\dbpenjualan.mdb;Mode=Share Deny Non' +
      'e;Persist Security Info=False;Jet OLEDB:System database="";Jet O' +
      'LEDB:Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:E' +
      'ngine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global ' +
      'Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLED' +
      'B:New Database Password="";Jet OLEDB:Create System Database=Fals' +
      'e;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy Locale o' +
      'n Compact=False;Jet OLEDB:Compact Without Replica Repair=False;J' +
      'et OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 672
    Top = 416
  end
  object ADOQuery1: TADOQuery
    Parameters = <>
    Left = 720
    Top = 416
  end
  object DataSource1: TDataSource
    Left = 760
    Top = 416
  end
end
