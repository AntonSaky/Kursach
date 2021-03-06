unit ufMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, ufProducts;

type
  TfMain = class(TForm)
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
    procedure AddProducts();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Type
  elem=^Product;
  Product =record
    Panel:TPanel;
    BuyBtn: TButton;
    Image: TImage;
    Name,Price:TLabel;
    next: elem;
    prev:elem;
  end;


var
  fMain: TfMain;
  tovar: elem;

implementation

{$R *.dfm}

procedure TfMain.AddProducts;
var tmp: elem;
begin
  New(tovar);
  tovar.prev:=nil;
  tovar.Panel:=TPanel.Create(fMain.pGoods);
  with tovar.Panel do
  begin
    Parent:= fMain.pGoods;
    Top:= 10;
    Left:= 10;
    Width:= 120;
    Height:= 160;
    ParentBackground:= False;
    Color:= clSilver;
  end;

  tmp:=tovar;

  New(tovar);
  tmp.next:=tovar;
  tovar.prev:=tmp;
  tovar.Panel:=TPanel.Create(fMain.pGoods);
  with tovar.Panel do
  begin
    Parent:= fMain.pGoods;
    Top:=  10;
    Left:= tovar^.prev^.Panel.Width + 15;
    Width:= 120;
    Height:= 160;
    ParentBackground:= False;
    Color:= clSilver;
  end;
end;

procedure TfMain.iFishClick(Sender: TObject);
begin
    fMain.AddProducts;
//  Form1.Hide;
//  Form2.Caption := lSeafood.Caption;
//  Form2.Show;
end;

procedure TfMain.lSeafoodClick(Sender: TObject);
begin
    fMain.AddProducts;
//  Form1.Hide;
//  Form2.Caption := lSeafood.Caption;
//  Form2.Show;
end;

end.

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
      Caption := '??????';
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


