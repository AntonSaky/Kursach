unit ufMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, ufProducts;

type
  TForm1 = class(TForm)
    pCatalog: TPanel;
    lCategory: TLabel;
    lSeparator: TLabel;
    lFruits: TLabel;
    lSeafood: TLabel;
    lVegatables: TLabel;
    lBakery: TLabel;
    lMilk: TLabel;
    lMeat: TLabel;
    lDrinks: TLabel;
    lLiked: TLabel;
    lAll: TLabel;
    iLike: TImage;
    iFish: TImage;
    iVegatables: TImage;
    iApple: TImage;
    iBread: TImage;
    iMilk: TImage;
    iMeat: TImage;
    iDrink: TImage;
    iAll: TImage;
    pGoods: TPanel;
    iBasket: TImage;
    pSearch: TPanel;
    pProduct: TPanel;
    Image1: TImage;
    bBuy: TBitBtn;
    lPrice: TLabel;
    lName: TLabel;
    procedure lSeafoodClick(Sender: TObject);
    procedure iFishClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

Type
  Tovar= ^Tproduct;
  TProduct = class(TForm1)
    Panel: TPanel;
    Image: TImage;
    BuyBtn: TBitBtn;
    Name, Price: TLabel;
    constructor Create(Num: integer);
  end;

Type
  list= record
   next: tovar;
   prev: tovar;
  end;
  comp =record
    knopka: TButton;
    image: TImage;
  end;

var
  Form1: TForm1;
  Product : tovar;



implementation

{$R *.dfm}

constructor Tproduct.Create(Num: Integer);
var
  i: integer;
  tov, tmp: ^list;
begin
  for i := 1 to num do
  begin
    New(tov);
    tmp:=tov;
    if i=1 then
      tov.prev:=nil
    else
     if i = num then
      tov.next:=nil;



    New(Product);
    With Product.Panel do
    begin
    Top:= 3;
    Left:= 3;
    Width:= 120;
    Height:= 160;
    end;
    With Product.BuyBtn do
    begin
      Left := 15;
      Top := 129;
      Width := 90;
      Height := 25;
      Caption := 'купить';
    end;
    With Product.Image do
    begin
      Left := 27;
      Top := 10;
      Width := 65;
      Height := 73;
      Align := alNone;
    end;
    With Product.Name do
    begin
      Left := 47;
      Top := 91;
      Width := 21;
      Height := 13;
      Caption := '';
    end;
    With Product.Price do
    begin
      Left := 28;
      Top := 110 ;
      Width := 64;
      Height := 13;
      Caption := '';
    end;
  end;
end;

procedure TForm1.iFishClick(Sender: TObject);
begin
 // TProduct.Create(3);
  Form1.Hide;
  Form2.Caption := lSeafood.Caption;
  Form2.Show;
end;

procedure TForm1.lSeafoodClick(Sender: TObject);
begin
  //TProduct.Create(3);
  Form1.Hide;
  Form2.Caption := lSeafood.Caption;
  Form2.Show;
end;

end.

object pProduct: TPanel
  AlignWithMargins = True
  Left = 3
  Top = 3
  Width = 120
  Height = 160
  Margins.Left = 5
  Margins.Top = 10
  Margins.Right = 10
  Margins.Bottom = 10
  Color = clSilver
  ParentBackground = False
  TabOrder = 0
  object Image1: TImage
    Left = 24
    Top = 11
    Width = 65
    Height = 73
    Align = alCustom
  end
  object lPrice: TLabel
    Left = 28
    Top = 110
    Width = 64
    Height = 13
    Caption = 'цена: 50 руб'
  end
  object lName: TLabel
    Left = 47
    Top = 91
    Width = 21
    Height = 13
    Caption = '—ыр'
  end
  object bBuy: TBitBtn
    Left = 15
    Top = 129
    Width = 90
    Height = 25
    Caption = 'купить'
    TabOrder = 0
  end
end


