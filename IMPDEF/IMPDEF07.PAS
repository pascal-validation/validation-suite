{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.2.2-17, FILE=IMPDEF07, CLASS=IMPLEMENTATIONDEFINED,       }
{ LEVEL=0, NUMBER=09                                                 }
{                                                                    }
{:This program observes the approximate accuracy of real operations  }
{:giving results  around 1.0. It prints the precision in decimal     }
{:digits up to 30 places.                                            }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{   V5.7: NUMBER changed to correspond with Annex E of 7185:1990.    }
{                                                                    }

program IMPDEF07(output);
var
   min: integer;
   x, y: array [ 1 .. 30 ] of real;
procedure nearone( v: real );
   label
      1;
   var
      i: integer;
   begin
   i := 1;
   while (x[i] > v) and (y[i] < v) do
      begin
      if i=30 then
         goto 1
      else
         i := i + 1
   end;
   1:
   if i < min then
      min := i
   end; {nearone}
begin
x[1] := 1.1;  x[2] := 1.01;  x[3] := 1.001; x[4] := 1.0001;
x[5] := 1.00001;  x[6] := 1.000001;  x[7] := 1.0000001;
x[8] := 1.00000001;  x[9] := 1.000000001;  x[10] := 1.0000000001;
x[11] := 1.00000000001;  x[12] := 1.000000000001;
x[13] := 1.0000000000001;  x[14] := 1.00000000000001;
x[15] := 1.000000000000001;  x[16] := 1.0000000000000001;
x[17] := 1.00000000000000001;  x[18] := 1.000000000000000001;
x[19] := 1.0000000000000000001;  x[20] := 1.00000000000000000001;
x[21] := 1.000000000000000000001;
x[22] := 1.0000000000000000000001;
x[23] := 1.00000000000000000000001;
x[24] := 1.000000000000000000000001;
x[25] := 1.0000000000000000000000001;
x[26] := 1.00000000000000000000000001;
x[27] := 1.000000000000000000000000001;
x[28] := 1.0000000000000000000000000001;
x[29] := 1.00000000000000000000000000001;
x[30] := 1.000000000000000000000000000001;
y[1] := 0.9;  y[2] := 0.99;  y[3] := 0.999; y[4] := 0.9999;
y[5] := 0.99999;  y[6] := 0.999999;  y[7] := 0.9999999;
y[8] := 0.99999999;  y[9] := 0.999999999;  y[10] := 0.9999999999;
y[11] := 0.99999999999;  y[12] := 0.999999999999;
y[13] := 0.9999999999999;  y[14] := 0.99999999999999;
y[15] := 0.999999999999999;  y[16] := 0.9999999999999999;
y[17] := 0.99999999999999999;  y[18] := 0.999999999999999999;
y[19] := 0.9999999999999999999;  y[20] := 0.99999999999999999999;
y[21] := 0.999999999999999999999;
y[22] := 0.9999999999999999999999;
y[23] := 0.99999999999999999999999;
y[24] := 0.999999999999999999999999;
y[25] := 0.9999999999999999999999999;
y[26] := 0.99999999999999999999999999;
y[27] := 0.999999999999999999999999999;
y[28] := 0.9999999999999999999999999999;
y[29] := 0.99999999999999999999999999999;
y[30] := 0.999999999999999999999999999999;
min := 30;
nearone(1.0 + 0.1 - 0.1);
nearone(0.1 * 10.0);
nearone(15.0 / 3.0 / 5.0);
nearone(0.6 + 0.4);
nearone( -(-1.1 + 0.1) );
nearone( abs(-2.1) / 2.1 );
nearone( sqrt(1.0/3.0) * sqrt(3.0) );
nearone( sqr( sqrt(2.0)) / 2.0 );
nearone( exp( ln(2.1) )/2.1 );
nearone( exp(ln(3.0)/2.0) / sqrt(3.0) );
nearone( exp(ln(sqr(0.1))/2.0) * 10.0 );
nearone( sin(arctan(0.75)) * 5.0 / 3.0 );
nearone( cos(arctan(4.0/3.0)) * 5.0 / 3.0 );
writeln(' OUTPUT FROM TEST...6.7.2.2-17');
write(' The accuracy of real operations is');
if min=30 then
   writeln(' greater than 30 decimal places')
else
   writeln(' about ', min:2, ' decimal places');
writeln(' IMPLEMENTATION DEFINED...6.7.2.2-17 (IMPDEF07)')
end.
