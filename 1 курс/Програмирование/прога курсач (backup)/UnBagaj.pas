unit UnBagaj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, UzBagaj;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    OpenDialog1: TOpenDialog;
    FIle1: TMenuItem;
    OpenTxtFile1: TMenuItem;
    CloseTxtFile1: TMenuItem;
    List1: TMenuItem;
    BuildList1: TMenuItem;
    SaveListTxt1: TMenuItem;
    Delete1: TMenuItem;
    DelList1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N1: TMenuItem;
    N4: TMenuItem;
    N11: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    procedure OpenTxtFile1Click(Sender: TObject);
    procedure CloseTxtFile1Click(Sender: TObject);
    procedure BuildList1Click(Sender: TObject);
    procedure DelList1Click(Sender: TObject);
    procedure SaveListTxt1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTip: FZap;    //��� ������-�� �����
  Form1: TForm1;
  //PList: PUzel; //��������� �� ������
  ftxt: TextFile;  //�������� ����������


implementation

{$R *.dfm}
 {�������� ��������� �����}
procedure TForm1.OpenTxtFile1Click(Sender: TObject);
var
 s: string;
 i: Integer;
begin
  if OpenDialog1.Execute then
  begin
    s := OpenDialog1.FileName;
    AssignFile(ftxt,s);

    append(ftxt);

    i:=IOResult;
    if i <> 0 then
      begin
        AssignFile(ftxt,s+'.txt');
        rewrite(ftxt)
      end;
  end;
end;

 {�������� ��������� �����}
procedure TForm1.CloseTxtFile1Click(Sender: TObject);
begin
 CloseFile(ftxt);
end;

    {���������� ������}
procedure TForm1.BuildList1Click(Sender: TObject);
begin
  BuildSpisok(f,ftip);
end;

  {�������� ������}
procedure TForm1.DelList1Click(Sender: TObject);
begin
  DelSpisok(f);
end;

   {���������� � ����� ����}
procedure TForm1.SaveListTxt1Click(Sender: TObject);
begin
writeln(ftxt,'���������� ������������� ������ ');
 WriteSpText(f,ftxt);
 writeln(ftxt,' ')
end;

 {�������� ��������������� �����}
procedure TForm1.N1Click(Sender: TObject);
var
 s: string;
 i: Integer;
begin
  if OpenDialog1.Execute then
  begin
    s := OpenDialog1.FileName;
    AssignFile(Ftip,s);

    Reset(Ftip);

    i:=IOResult;
    if i <> 0 then
      begin
        AssignFile(Ftip,s+'.dat');
        rewrite(Ftip)
      end;
  end;
end;

     {�������� ��������������� �����}
procedure TForm1.N4Click(Sender: TObject);
begin
  CloseTipFile (fTip);
end;

  {����� � �������������� ����}
procedure TForm1.N2Click(Sender: TObject);
begin
  WriteTipFile (f,fTip);
end;

   {������ ��������������� �����}
procedure TForm1.N3Click(Sender: TObject);
begin
  ReadTipFile (f,fTip);
end;

procedure TForm1.N11Click(Sender: TObject);
var
t: Puzel;
Number: integer;
r:Puzel;
i:integer;
begin
Number:= StrToint (InputBox ('����� ��������','������� ����� �������',''));
t:= f;
for i:=1 to Number-2 do
t:= t^.next;
delelement(t,r);

end;



procedure TForm1.N6Click(Sender: TObject);
var
Redakt: integer;
t: Puzel;
i:integer;
u: Zak;
VodRedakt: integer;

begin
  t:= t;
 Redakt:= StrTOint (InputBox ('������������� ������','������� ����� ���-�� ��������',''));
  for i:=1 to Redakt-2 do
   t:= t^.next;
   u:= t^.x;
  // VodRedakt:= StrTOint (InputBox ('�������������� ��������','������� ����� ������ ��������','',);

   u.Number:= StrToInt(InputBox ('������� ����� ������','',''));     //���� ������ ����� (� ������� �� ����� ���� �����)
   u.FIO:= InputBox('������� ��� ���������',' ',' ');                 //���� ��� �������� (� ������� �� ����� ���� �����)
   u.Zakaz:= InputBox('������� ������ ���������� ����',' ',' ');       //���� ���������� ���� (� ������� �� ����� ���� �����)
   u.SumZak:= StrToFloat(InputBox('������� ����� ������',' ',' '));    //���� ����� ������ (� ������� �� ����� ���� �����)
   t^.x:= u;






end;

end.
