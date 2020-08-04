{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.1-13, FILE=IMPDEP06, CLASS=IMPLEMENTATIONDEPENDENT,       }
{ LEVEL=0, NUMBER=04                                                 }
{                                                                    }
{:This test contains an implementation-dependency in the order of    }
{:evaluation of member-designators of a set-constructor.             }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{   V5.7: NUMBER changed to correspond with Annex F of 7185:1990.    }
{                                                                    }

program IMPDEP06(output);
const min=0; max=15;
type
   IT      = min..max;
var
   evar : set of IT;
   seed,i : IT;
   etab : array[IT] of IT;

   function horrible:IT;
   begin horrible:=succ(seed); seed:=pred(seed) end;

begin
   for i:=min to max do etab[i]:=i;
   seed:=7;
   evar:=[seed,etab[horrible]];
   { Values could be [7,8]    text order
                     [6,8]    reverse order
                     or other or not defined. }
   writeln(' OUTPUT FROM TEST...6.7.1-13');
   write(' The evaluation order of a member designator is');
   if evar = [7,8] then
      writeln(' textual')
   else if evar = [6,8] then
      writeln(' reverse textual')
   else
      writeln(' unknown');
   writeln(' IMPLEMENTATION DEPENDENT...6.7.1-13 (IMPDEP06)')
end.
