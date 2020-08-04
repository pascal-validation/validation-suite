{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.1-12, FILE=IMPDEP05, CLASS=IMPLEMENTATIONDEPENDENT,       }
{ LEVEL=0, NUMBER=03                                                 }
{                                                                    }
{:This test contains an implementation-dependency in the order of    }
{:evaluation of expressions in a member-designator of a              }
{:set-constructor.                                                   }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program IMPDEP05(output);
type
   ET      = (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P);
var
   evar : set of ET;
   seed : ET;

   function nasty:ET;
   begin seed:=pred(seed); nasty:=seed end;

   function horrible:ET;
   begin seed:=succ(succ(seed)); horrible:=seed end;

begin
   seed:=F;
   evar:=[nasty..horrible];
   { Values could be [E..G]    text order
                     [G..H]    reverse order
                     [E..H]    simultaneous
                     or other or not defined }
   writeln(' OUTPUT FROM TEST...6.7.1-12');
   write(' The order of evaluation of [A..B] is ');
   if evar = [E..G] then
      writeln('AB')
   else if evar = [G..H] then
      writeln('BA')
   else if evar = [E..H] then
      writeln('simultaneous')
   else
      writeln('unknown');
   writeln(' IMPLEMENTATION DEPENDENT...6.7.1-12 (IMPDEP05)')
end.
