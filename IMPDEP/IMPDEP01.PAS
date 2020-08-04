{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.5.3.2-6, FILE=IMPDEP01, CLASS=IMPLEMENTATIONDEPENDENT,      }
{ LEVEL=0, NUMBER=01                                                 }
{                                                                    }
{:This program determines the evaluation order of indexed-           }
{:expressions of an indexed-variable.                                }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program IMPDEP01(output);
var
   st: packed array [ 1 .. 3 ] of char;
   count: 1 .. 4;
   v: array [ 1..1, 1..1, 1..1 ] of integer;

function sideeffect(c: char; i: integer): integer;
   begin
   st[count] := c;
   count := count + 1;
   sideeffect := i;
   end;
begin
   st := '   ';
   count := 1;
   writeln(' OUTPUT FROM TEST...6.5.3.2-6');
   write(' The order of evaluation of V[A,B,C] is ');
   v[sideeffect('A',1),sideeffect('B',1),sideeffect('C',1)] := 1;
   writeln( st );
   writeln(' IMPLEMENTATION DEPENDENT...6.5.3.2-6 (IMPDEP01)')
end.
