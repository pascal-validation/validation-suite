{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.1-11, FILE=IMPDEP04, CLASS=IMPLEMENTATIONDEPENDENT,       }
{ LEVEL=0, NUMBER=02                                                 }
{                                                                    }
{:This program determines the order of evaluation of the expressions }
{:of a member-designator.                                            }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program IMPDEP04(output);
var
   st: packed array [ 1 .. 3 ] of char;
   count: 1 .. 4;
   x: set of 0 .. 2;

function sideeffect(c: char; i: integer): integer;
   begin
   st[count] := c;
   count := count + 1;
   sideeffect := i;
   end;
begin
   count := 1;
   st := '   ';
   writeln(' OUTPUT FROM TEST...6.7.1-11');
   write(' The order of evaluation of [A,B,C] is ');
   x := [sideeffect('A',0),sideeffect('B',1),sideeffect('C',2)];
   writeln( st );
   writeln(' IMPLEMENTATION DEPENDENT...6.7.1-11 (IMPDEP04)')
end.
