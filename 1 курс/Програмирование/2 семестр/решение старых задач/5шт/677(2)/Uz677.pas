unit Uz677;

interface
    const
    n= 3;
  type
  matr = array [1..n, 1..n] of real;

 {���������� ���������� ������� ������� �}
procedure zapMatrA(var a: matr; n: integer);
 {������� ������� �������� i,j ������� b}
function matr1(var a: matr; i, j: integer): real;
 {������ ������� b}
procedure matrB(var b, a: matr; n: integer);
 {����� ������� � ����� ���� � �}
procedure vivodMatr(var a: matr; n: integer; var ftxt: TextFile);
 {�������� ���������� �����}
procedure OpenTextFile(var ftxt: TextFile; t: string);

implementation

  {���������� ���������� ������� ������� �}
procedure zapMatrA(var a: matr; n: integer);
var
i,j:integer;
begin
  randomize;
  for i := 1 to n do
    for j := 1 to n do
      a[i, j] := random(10);
end;

{������� ������� �������� i,j ������� b}
function matr1(var a: matr; i, j: integer): real;
var
  sum: real;
  k,l:integer;
begin
  sum := 0; //�������� �����
  if i = j then matr1 := a[i, j]
  else if i < j then
  begin
    for k := i to j do //����� ������� �����������
      for l := i to j do // ������������ i,j
        sum := sum + a[k, l]; // ����� ��������� � �������
    matr1 := sum;
  end
  else
  begin
    for k := j to i do
      for l := j to i do
        sum := sum + a[k, l]; //������ �����
    matr1 := sum;
  end;
end;

  {������ ������� b}
procedure matrB(var b, a: matr; n: integer);
var
i,j:integer;
begin
  for i := 1 to n do // ����� ����� ������� �
    for j := 1 to n do //��������� � ������� �������� ������� � ������ i

      b[i, j] := matr1(a, i, j);
 
end;

 {����� ������� � ����� ���� � �}
procedure vivodMatr(var a: matr; n: integer; var ftxt: TextFile);
var
i,j: integer;
begin
  for i := 1 to n do

  begin
    for j := 1 to n do
      write(ftxt, a[i, j]:4, ' ');
    writeln(ftxt, ' ');
  end;
end;


procedure OpenTextFile(var ftxt: TextFile; t: string);
begin
  assign(ftxt, t);
  append(ftxt);
end;

end.
