program P270;

uses
  Forms,
  Un270 in 'Un270.pas' {Form1},
  Uz270 in 'Uz270.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
