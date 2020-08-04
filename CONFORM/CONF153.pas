{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.2.2-3, FILE=CONF153, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This program checks that constant and variable operands for div    }
{:and mod produce the same result, and that negative operands, where }
{: permitted, are accepted.                                          }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Test revised to include div and mod by 5 and div by -5.    }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF153(output);
var
   i, j, l, m,counter : integer;
begin
   counter := 0;
   j:=2;

   for i:= -10 to 10 do
   begin
      l:=i div j;
      m:= i div 2;
      if (l=m) then counter := counter+1;
      l:=i mod j;
      m:= i mod 2;
      if (l=m) then counter := counter+1;
      if (m >= 0) and (m < 2) and
          ((m-i) div 2 * 2 = m-i) then counter := counter+1
   end;

   j:=-2;
   for i:= -10 to 10 do
   begin
      l:=i div j;
      m:= i div (-2);
      if (l=m) then counter := counter+1
   end;

   j:=5;

   for i:= -10 to 10 do
   begin
      l:=i div j;
      m:= i div 5;
      if (l=m) then counter := counter+1;
      l:=i mod j;
      m:= i mod 5;
      if (l=m) then counter := counter+1;
      if (m >= 0) and (m < 5) and
          ((m-i) div 5 * 5 = m-i) then counter := counter+1
   end;

   j:=-5;
   for i:= -10 to 10 do
   begin
      l:=i div j;
      m:= i div (-5);
      if (l=m) then counter := counter+1
   end;

   if counter=168 then
      writeln(' PASS...6.7.2.2-3 (CONF153)')
   else
      writeln(' FAIL...6.7.2.2-3 (CONF153)')
end.
