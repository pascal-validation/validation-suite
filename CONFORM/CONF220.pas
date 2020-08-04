{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1995, Prospero Software Limited             }
{                                                                    }
{ TEST 6.9.1-17, FILE=CONF220, CLASS=CONFORMANCE, LEVEL=0            }
{                                                                    }
{:The revision of ISO 7185 in 1990 clarified the definition of       }
{:textfile input.  Multiple parameters are evaluated in textual      }
{:order as though by separate statements.                            }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V5.7: New test to confirm conformance to ISO 7185:1990.          }
{                                                                    }

program CONF220(output);

var
   f: text;
   i,j,k: integer;
   a: array [1..5] of integer;

begin
   for i := 1 to 5 do a[i] := i;
   rewrite(f);
   writeln(f,' 2  10  5  20 ');
   reset(f);
   read(f,j,a[j]);
   read(f,k,a[k]);
   j := 0;
   for i := 1 to 5 do j := j + a[i];
   if j = 38 then
	writeln(' PASS...6.9.1-17 (CONF220)')
   else writeln(' FAIL...6.9.1-17 (CONF220)');
end.
