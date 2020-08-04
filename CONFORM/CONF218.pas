{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1995, Prospero Software Limited             }
{                                                                    }
{ TEST 6.1.5-14, FILE=CONF218, CLASS=CONFORMANCE, LEVEL=0            }
{                                                                    }
{:The revision of ISO 7185 in 1990 amended the definition of         }
{:unsigned-real to permit program constants to be written with       }
{:digit-sequences which exceed the local value of maxint.            }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V5.7: New test to confirm conformance to ISO 7185:1990.          }
{         (Replaces IMDEFB52, which assumed a particular value       }
{         of maxint.)                                                }
{                                                                    }

program CONF218(output);

var
   x,y,z1,z2: real;

begin
   x := 10e12;    { probably exceeds maxint }
   y := 10000000000000.0;
   z1 := x / y;
   y := 10000000000000e0;
   z2 := x / y;
   if (abs(z1 - 1.0) < 0.0001) and
      (abs(z2 - 1.0) < 0.0001) then
	writeln(' PASS...6.1.5-14 (CONF218)')
   else writeln(' FAIL...6.1.5-14 (CONF218)');
end.
