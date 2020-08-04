{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.2.2-2, FILE=IMPDEP12, CLASS=IMPLEMENTATIONDEPENDENT,      }
{ LEVEL=0, NUMBER=07                                                 }
{                                                                    }
{:This program determines whether selection of a variable involving  }
{:the dereferencing of a pointer occurs before or after the          }
{:evaluation of the expression in an assignment-statement.           }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Reclassified from IMPLEMENTATIONDEFINED.                   }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{   V5.7: NUMBER changed to correspond with Annex F of 7185:1990.    }
{                                                                    }

program IMPDEP12(output);
type
   poynter = ^rekord;
   rekord=record
            a : integer;
            b : boolean;
            link : poynter
         end;
var
   temp, ptr : poynter;
function sideeffect(var p : poynter) : integer;
begin
   p:=p^.link;
   sideeffect:=2
end;

begin
   writeln(' OUTPUT FROM TEST...6.8.2.2-2');
   write(' The binding order of (P^ := EXPRESSION)');
   new(ptr);
   ptr^.a:=1;
   ptr^.b:=true;
   new(temp);
   ptr^.link:=temp;
   temp^.a:=0;
   temp^.b:=false;
   temp:=ptr;
   ptr^.a:=sideeffect(ptr);
   if temp^.a=2 then
      writeln(' is selection then evaluation')
   else
      if temp^.link^.a=2 then
         writeln(' is evaluation then selection');
   writeln(' IMPLEMENTATION DEPENDENT...6.8.2.2-2 (IMPDEP12)')
end.
