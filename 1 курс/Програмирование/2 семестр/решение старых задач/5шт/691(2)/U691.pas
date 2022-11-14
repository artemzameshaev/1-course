unit U691;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Uz691, Menus, StdCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    OpenDialog1: TOpenDialog;
    OpenText1: TMenuItem;
    Openfile1: TMenuItem;
    ZapmassA1: TMenuItem;
    Zap1: TMenuItem;
    PrintmassA1: TMenuItem;
    Print1: TMenuItem;
    Calculatematr1: TMenuItem;
    Calculate1: TMenuItem;
    Printtmatr1: TMenuItem;
    Printt1: TMenuItem;
    Closefile1: TMenuItem;
    Close1: TMenuItem;
    Label1: TLabel;
    Edit_n: TEdit;
    procedure Openfile1Click(Sender: TObject);
    procedure Zap1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure Calculate1Click(Sender: TObject);
    procedure Printt1Click(Sender: TObject);
    procedure Close1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  k:integer;
  n: integer; //��������� ������ �������
  a: massA;
  b: matrB;
  ftxt: TextFile;
  t: string;


implementation

{$R *.dfm}

procedure TForm1.Openfile1Click(Sender: TObject);
var
t: string;
begin
if OpenDialog1.Execute then
   begin
 t:= OpenDialog1.FileName;
 AssignFile(ftxt, t);
 append(ftxt);
  end;
end;


procedure TForm1.Zap1Click(Sender: TObject);
var
i:integer;
begin
  n:= StrToInt (Edit_n.Text);
  k:= n*n;
 {randomize;
  for i := 1 to k do
    a[i] := 10 * random;}
 ZapMassA(a,k);
end;


procedure TForm1.Print1Click(Sender: TObject);
var
i:integer;
begin
{writeln(ftxt, '������');
  for i := 1 to k  do
    write(ftxt, a[i]:7:2);
  writeln(ftxt, ''); }
  vivod_Mass(a, k, ftxt)
end;


procedure TForm1.Calculate1Click(Sender: TObject);
var
i,j:integer;
begin
 n:= StrToInt (Edit_n.Text);
{k := 1;
  for i := 1 to n do
    if odd(i) then
      for  j := 1 to n do
      begin
        b[i, j] := a[k];
        k := k + 1;
      end
    else
      for j := n downto 1 do
      begin
        b[i, j] := a[k];
        k := k + 1;
      end; }
      matr1(a,b,n);
end;


procedure TForm1.Printt1Click(Sender: TObject);
var
i,j:integer;
begin
{writeln(ftxt,'������� ������ ����, ������ ������');
  for i := 1 to n do
  begin
    for j := 1 to n do
      write(ftxt, b[i, j]:5:2);
    writeln(ftxt);
  end;}
  vivodMatr1(a,b,n,ftxt);
end;

procedure TForm1.Close1Click(Sender: TObject);
begin
 CloseFile(ftxt);
end;

end.
