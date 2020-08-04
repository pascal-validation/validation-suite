{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.5-1, FILE=CONF009, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This program tests the conformance of the processor to the syntax  }
{:productions for numbers.                                           }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Check on sum of a to j added. Writes modified to conform   }
{         to conventions.                                            }
{   V4.2: Representation of range of 'sum' changed from              }
{         fixed-point to floating-point.                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF009(output);

const
   { all cases are legal productions }
   a = 1;
   b = 12;
   c = 0123;
   d = 123.0123;
   e = 123.0123E+2;
   f = 123.0123E-2;
   g = 123.0123E2;
   h = 123E+2;
   i = 0123E-2;
   j = 0123E2;
var
   sum : real;

begin
   sum := a + b + c + d + e + f + g + h + i + j;
   if (sum > 494.7E2) or
      (sum < 494.6E2) then
      writeln(' FAIL...6.1.5-1 (CONF009)')
   else
      writeln(' PASS...6.1.5-1 (CONF009)')
end.
