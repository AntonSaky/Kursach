unit ufProducts;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TForm2 = class(TForm)
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
    iBasket: TImage;
    pSearch: TPanel;
    pGoods: TPanel;
    procedure iFishClick(Sender: TObject);
    procedure lSeafoodClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  ufMain;
{$R *.dfm}

procedure TForm2.iFishClick(Sender: TObject);
begin
//  Form2.Close;
//  Form1.Show;
end;

procedure TForm2.lSeafoodClick(Sender: TObject);
begin
//  Form2.Close;
//  Form1.Show;
end;

end.
