program SakaShop;

uses
  Vcl.Forms,
  ufMain in 'ufMain.pas' {fMain},
  ufProducts in 'ufProducts.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfMain, fMain);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
