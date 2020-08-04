{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.2.3-2, FILE=IMPDEP13, CLASS=IMPLEMENTATIONDEPENDENT,      }
{ LEVEL=0, NUMBER=08                                                 }
{                                                                    }
{:This program determines the order of evaluation of the actual      }
{:parameters in a procedure statement.                               }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Reclassified from IMPLEMENTATIONDEFINED.                   }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{   V5.7: NUMBER changed to correspond with Annex F of 7185:1990.    }
{                                                                    }

program IMPDEP13(output);
var
   string : packed array[1..3] of char;
   i      : integer;
function sideeffect(c : char) : integer;
begin
   string[i] := c;
   i := i + 1;
   sideeffect := i
end;
procedure order(p,q,r : integer);
begin
   if string = 'ABC' then
      writeln(' Actual parameters are evaluated in forward order')
   else
      if string = 'CBA' then
         writeln(' Actual parameters are evaluated in reverse order')
      else
         writeln(' Order of actual parameter evaluation is unknown')
end;
begin
   writeln(' OUTPUT FROM TEST...6.8.2.3-2');
   i := 1;
   order(sideeffect('A'),sideeffect('B'),sideeffect('C'));
   writeln(' IMPLEMENTATION DEPENDENT...6.8.2.3-2 (IMPDEP13)')
end.
