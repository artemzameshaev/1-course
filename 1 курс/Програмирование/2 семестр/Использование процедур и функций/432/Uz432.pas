unit Uz432;

interface

 const n=6;
type
mass=array[0..6] of real;
function P_Calculate(x:byte;m:mass):real;
procedure Vvod_Kf (var a:mass; var  ftxt: TextFile);
procedure Print_P (var a:mass; var ftxt: TextFile);


implementation

function P_Calculate(x:byte; m:mass):real;
 var
 i,j:byte;
 s,y:real;
begin
s:=m[0];
for i:=n downto 1 do
 begin
  y:=1;
  for j:=1 to i do
  y:=y*x;
  s:=s+m[i]*y;
 end;
P_Calculate:=s;

end;

procedure Vvod_Kf (var a:mass; var  ftxt: TextFile);
 var
 i:byte;
begin
//writeln('������� ',n+1,' ������������� ����������:');
for i:=n downto 0 do
 begin
//  write('a[',i,']=');
 // readln(a[i]);
 end;
end;

procedure Print_P (var a:mass; var ftxt: TextFile);
var
i,j,x:byte;

 begin
 writeln(ftxt,'������������ ����������:');
for i:=n downto 0 do
write(a[i]:0:1,' ');
writeln(ftxt);
writeln(ftxt,'�������� ��������� �(�+1)-�(�) ��� �=1,3,4:');
for x:=1 to 4 do
if x<>2 then
 begin
  write(ftxt,'x=',x,' ��������=',P_Calculate(x+1,a)-P_Calculate(x,a):0:1);
  writeln(ftxt);
 end;
 end;


end.
