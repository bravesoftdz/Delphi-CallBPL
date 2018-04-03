unit MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons;

type
  TFormMain = class(TForm)
    ButtonCallPOForm: TSpeedButton;
    procedure CallPOForm(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

procedure TFormMain.CallPOForm(Sender: TObject);
var
  FormPO: TForm;
  FormClass: TFormClass;
  HandlePack: HModule;
begin
  // try to load the package
  HandlePack := LoadPackage ('PO.bpl');
  if HandlePack > 0 then
  begin
    FormClass := TFormClass(GetClass('TFormPO'));
    if Assigned(FormClass) then
    begin
      FormPO := FormClass.Create(Application);
      try
        FormPO.ShowModal;
      finally
        FormPO.Free;
      end;
    end
    else
      ShowMessage ('Form class not found');
    UnloadPackage (HandlePack);
  end
  else
    ShowMessage ('Package not found');
end;

end.
