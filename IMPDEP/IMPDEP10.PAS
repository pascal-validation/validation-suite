{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.3-2, FILE=IMPDEP10, CLASS=IMPLEMENTATIONDEPENDENT,        }
{ LEVEL=0, NUMBER=06                                                 }
{                                                                    }
{:This program determines the order of evaluation of the actual      }
{:parameters of a function-designator.                               }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{   V5.7: NUMBER changed to correspond with Annex F of 7185:1990.    }
{                                                                    }

program IMPDEP10(output);
var
   st: packed array [ 1 .. 4 ] of char;
   count: 1 .. 5;
   x: integer;

function sideeffect(c: char; i: integer): integer;
   begin
   st[count] := c;
   count := count + 1;
   sideeffect := i;
   end;
function f(i, j: integer): integer;
   begin
   f := i + j
   end;
begin
   count := 1;
   st := '    ';
   writeln(' OUTPUT FROM TEST...6.7.3-2');
   write(' The order of evaluation of F(F(A,B),F(C,D)) is ');
   x := f(f(sideeffect('A',0),sideeffect('B',1)),
          f(sideeffect('C',0),sideeffect('D',1)));
   writeln( st );
   writeln(' IMPLEMENTATION DEPENDENT...6.7.3-2 (IMPDEP10)')
end.
