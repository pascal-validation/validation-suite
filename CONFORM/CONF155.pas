{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.2.3-1, FILE=CONF155, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This test checks the operation of the Boolean operators.           }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Writes revised.                                            }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF155(output);
var
   a,b,c : boolean;
   counter : integer;
begin
   counter:=0;
   a:=false;
   b:=false;
   { OR truth table }

   if a or b then
      writeln(' FAIL...6.7.2.3-1, OR OPERATOR(1) (CONF155)')
   else
   begin
      b:=true;
      if a or b then
      begin
         a:=true;
         b:=false;
         if a or b then
         begin
            b:=true;
            if a or b then
               counter:=counter+1
            else
               writeln(' FAIL...6.7.2.3-1, OR OPERATOR(2) (CONF155)')
         end
         else
            writeln(' FAIL...6.7.2.3-1, OR OPERATOR(3) (CONF155)')
      end
      else
         writeln(' FAIL...6.7.2.3-1, OR OPERATOR(4) (CONF155)')
   end;

   { AND truth table }
   a:=false;
   b:=false;
   if a and b then
      writeln(' FAIL...6.7.2.3-1, AND OPERATOR(1) (CONF155)')
   else
   begin
      b:=true;
      if a and b then
         writeln(' FAIL...6.7.2.3-1, AND OPERATOR(2) (CONF155)')
      else
      begin
         a:=true;
         b:=false;
         if a and b then
            writeln(' FAIL...6.7.2.3-1, AND OPERATOR(3) (CONF155)')
         else
         begin
            b:=true;
            if a and b then
               counter:=counter+1
            else
               writeln(' FAIL...6.7.2.3-1, AND OPERATOR(4) (CONF155)')
         end
      end
   end;

   { NOTE: NOT is sometimes badly implemented by wordwise
           complementation, and for this reason the following
           two tests may fail. }

   if (not false)=true then
      counter:=counter+1
   else
      writeln(' FAIL...6.7.2.3-1, NOT OPERATOR(1) (CONF155)');

   if (not true)=false then
      counter:=counter+1
   else
      writeln(' FAIL...6.7.2.3-1, NOT OPERATOR(2) (CONF155)');

   c:=false;
   a:=true;
   b:=false;
   if (a or b)=(b or a) then
      counter:=counter+1
   else
      writeln(' FAIL...6.7.2.3-1, BOOLEAN COMMUTATION (CONF155)');

   if ((a or b)or c)=(a or(b or c)) then
      counter:=counter+1
   else
      writeln(' FAIL...6.7.2.3-1, BOOLEAN ASSOCIATIVITY (CONF155)');

   if (a and(b or c))=((a and b)or(a and c)) then
      counter:=counter+1
   else
      writeln(' FAIL...6.7.2.3-1, BOOLEAN DISTRIBUTION (CONF155)');

   if not(a or b)=((not a) and(not b)) then
      counter:=counter+1
   else
      writeln(' FAIL...6.7.2.3-1, DEMORGAN1 (CONF155)');

   if not(a and b)=((not a) or (not b)) then
      counter:=counter+1
   else
      writeln(' FAIL...6.7.2.3-1, DEMORGAN2 (CONF155)');

   if not(not a)= a then
      counter:=counter+1
   else
      writeln(' FAIL...6.7.2.3-1, BOOLEAN INVERSION (CONF155)');

   if counter=10 then
      writeln(' PASS...6.7.2.3-1 (CONF155)')
end.
