{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.4-9, FILE=IMPDEP03, CLASS=IMPLEMENTATIONDEPENDENT,      }
{ LEVEL=0, NUMBER=11                                                 }
{                                                                    }
{:This program determines the order and number of evaluations of the }
{:parameters of the procedure unpack.                                }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program IMPDEP03(output);
type
   str = packed array [ 1 .. 3 ] of char;
var
   st: packed array [ 1 .. 7 ] of char;
   count: 1 .. 7;
   a: array [ 1 .. 1 ] of array [ 1 .. 3 ] of char;
   z: array [ 1 .. 1 ] of str;

function sideeffect(c: char; i: integer): integer;
   begin
   st[count] := c;
   if count < 7 then
      count := count + 1;
   sideeffect := i;
   end;
begin
   count := 1;
   z[1] := 'XYZ';
   st := '       ';
   writeln(' OUTPUT FROM TEST...6.6.5.4-9');
   write(' The order of evaluation of UNPACK(Z,A,I) is ');
   unpack(z[sideeffect('Z',1)], a[sideeffect('A',1)],
        sideeffect('I',1) );
   writeln( st );
   writeln(' IMPLEMENTATION DEPENDENT...6.6.5.4-9 (IMPDEP03)')
end.
