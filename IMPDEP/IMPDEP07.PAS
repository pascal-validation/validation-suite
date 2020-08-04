{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.1-14, FILE=IMPDEP07, CLASS=IMPLEMENTATIONDEPENDENT,       }
{ LEVEL=0, NUMBER=03                                                 }
{                                                                    }
{:This program determines the order of evaluation of the expressions }
{:of a set-constructor.                                              }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program IMPDEP07(output);
var
   st: packed array [ 1 .. 2 ] of char;
   count: 1 .. 3;
   x: set of 0 .. 2;

function sideeffect(c: char; i: integer): integer;
   begin
   st[count] := c;
   count := count + 1;
   sideeffect := i;
   end;
begin
   count := 1;
   st := '  ';
   writeln(' OUTPUT FROM TEST...6.7.1-14');
   write(' The order of evaluation of [A..B] is ');
   x := [sideeffect('A',0) .. sideeffect('B',1)];
   writeln( st );
   writeln(' IMPLEMENTATION DEPENDENT...6.7.1-14 (IMPDEP07)')
end.
