{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.3-4, FILE=CONF165, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This program checks that function calls can appear in different    }
{:positions with pack and unpack.                                    }
{                                                                    }
{ This test is essentially a 'pretest' for two implementation-       }
{ dependent tests listed in the main program.                        }
{                                                                    }
{ Modification History :                                             }
{   V4.1: New test.                                                  }
{   V4.2: In pretests for 6.6.5.4-8 and 6.6.5.4-9 the upper limits   }
{         on the number of parameter evaluations have been           }
{         increased.                                                 }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF165(output);
type
   str = packed array [ 1 .. 3 ] of char;
var
   pass: boolean;
   count: 1 .. 24;
   a: array [ 1 .. 1 ] of array [ 1 .. 3 ] of char;
   z: array [ 1 .. 1 ] of str;

function sideeffect(i: integer): integer;
   begin
   count := count + 1;
   sideeffect := i;
   end;

procedure check(lower, upper: integer; condition: boolean);
   {checks value of count in required range. }
   begin
   if (count<lower) or (count>upper) or not condition then
      pass := false;
   count := lower;
   end;

begin
   count := 1;
   pass := true;

   { Pretest for 6.6.5.4-8. }
   a[1][1] := 'X'; a[1][2] := 'Y'; a[1][3] := 'Z';
   pack(a[sideeffect(1)], sideeffect(1),
        z[sideeffect(1)] );
   check(3, 9, z[1]='XYZ');

   { Pretest for 6.6.5.4-9 }
   a[1][3] := 'A';
   unpack(z[sideeffect(1)], a[sideeffect(1)],
        sideeffect(1) );
   check(6, 12, a[1][3]='Z');
   if pass then
      writeln(' PASS...6.7.3-4 (CONF165)')
   else
      writeln(' FAIL...6.7.3-4 (CONF165)')
end.
