{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.2.2-1, FILE=IMPDEP11, CLASS=IMPLEMENTATIONDEPENDENT,      }
{ LEVEL=0, NUMBER=07                                                 }
{                                                                    }
{:This program determines whether selection of a variable involving  }
{:the indexing of an array occurs before or after the evaluation of  }
{:the expression in an assignment-statement.                         }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Reclassified from IMPLEMENTATIONDEFINED.                   }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{   V5.7: NUMBER changed to correspond with Annex F of 7185:1990.    }
{                                                                    }

program IMPDEP11(output);
var
   i : integer;
   a : array[1..3] of integer;
function sideeffect(var i:integer) : integer;
begin
   i:=i+1;
   sideeffect:=i
end;

begin
   writeln(' OUTPUT FROM TEST...6.8.2.2-1');
   write(' The binding order of (A[I] := EXPRESSION)');
   i:=1;
   a[1]:=0;
   a[2]:=0;
   a[i]:=sideeffect(i);
   if a[1]=2 then
      writeln(' is selection then evaluation')
   else
      if a[2]=2 then
         writeln(' is evaluation then selection');
   writeln(' IMPLEMENTATION DEPENDENT...6.8.2.2-1 (IMPDEP11)')
end.
