unit Uz466;

interface
type
  string1=string[80];
 procedure Zaena_Sivalov (var s:string1; l:integer);
 procedure Vivod_Zamen_Sim (var s: string1; var ftxt:TextFile);


implementation


{��������� ������� �������� 1 �� 0 � 0 �� 1}
 procedure Zaena_Sivalov (var s:string1; l:integer);
 var
 i,n: integer;
 begin
 n:= length (s);
 for i:=l to n do
   if s[i] = '1' then
       s[i]:= '0'
 else
     if (s[i]='0') then s[i]:= '1';
 end;


    {����� ���������� ������}
 procedure Vivod_Zamen_Sim (var s: string1; var ftxt:TextFile);
 begin
 writeln (ftxt,' ���������� ������',s);
 end;


end.
