unit Uz442;

interface
 const n=10;
  type
 mass= array[1..n]of real;
    //function len(x1,y1,x2,y2:real; var ftxt: TextFile):real;
    procedure Rend_Points (var x,y:mass; n:integer);
    Function Perimetr(var x,y: mass; n:integer):real;
implementation

 {function len(x1,y1,x2,y2:real; var  ftxt: TextFile):real;

  var
    x,y:mass;
    i:integer;
    s:real;
    //ftxt: TextFile;
begin
 len:=sqrt(sqr(x1-x2)+sqr(y1-y2));     }
 {randomize;
 for i:=1 to n do
  begin
  x[i]:=random(100)/10;
  y[i]:=random(100)/10;
  writeln(ftxt,'����� ',i,'= ',x[i]:3:1,' , ',y[i]:3:1);
  end;
 s:=len(x[1], y[1], x[n], y[n]);
 for i:=1 to (n-1) do
   begin
  s:= s + len(x[i],y[i],x[i+1],x[i+1]);
   end;
     begin
   writeln(ftxt,'��������� =  ',s:4:1);
     end; }
end;
      {�������� 10 ��������� �����}
procedure Rend_Points (var x,y:mass; n:integer);
var
i: integer;
begin
 randomize;
 for i:=1 to n do
  begin
    x[i]:=random(100)/10;
    y[i]:=random(100)/10;
  end;
end;

 Function Perimetr(var x,y: mass; n:integer):real;
  var
  P: real;
 begin
 P= 0;
 for i:=1

 end;




end.
