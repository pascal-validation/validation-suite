{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.2.3-3, FILE=IMPDEP08, CLASS=IMPLEMENTATIONDEPENDENT,      }
{ LEVEL=0, NUMBER=05                                                 }
{                                                                    }
{:This program determines if a boolean-expression is partially or    }
{:completely evaluated when the value of the expression is           }
{:determined before the expression is fully evaluated.               }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Reclassified from IMPLEMENTATIONDEFINED.                   }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{   V5.7: NUMBER changed to correspond with Annex F of 7185:1990.    }
{                                                                    }

program IMPDEP08(output);
var
   a:boolean;
   k,l:integer;

function sideeffect(var i:integer; b:boolean):boolean;
begin
   i:=i+1;
   sideeffect:=b
end;

begin
   writeln(' OUTPUT FROM TEST...6.7.2.3-3');
   write(' Short circuit evaluation of (A AND B)');
   k:=0;
   l:=0;
   a:=sideeffect(k,false) and sideeffect(l,false);
   if (k=0) and (l=1) then
      writeln(' performed, only second expression evaluated')
   else
      if (k=1) and (l=0) then
         writeln(' performed, only first expression evaluated')
      else
         if(k=1) and (l=1) then
            writeln(' not performed')
         else
            writeln(' , test produces inexplicable result');
   writeln(' IMPLEMENTATION DEPENDENT...6.7.2.3-3 (IMPDEP08)')
end.
