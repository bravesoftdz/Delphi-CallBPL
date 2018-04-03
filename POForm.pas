unit POForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TFormPO = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPO: TFormPO;

implementation

{$R *.dfm}

initialization
  RegisterClass(TFormPO);

end.
