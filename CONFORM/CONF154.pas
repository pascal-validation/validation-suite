{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.2.2-4, FILE=CONF154, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This program checks that maxint satisfies the conditions laid down }
{:in the Pascal Standard.                                            }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Last relational test extended. Was previously 6.7.2.2-5.   }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }
{ Recoded to avoid compile-time range violation.}

program CONF154(output);
var
   i, max : integer;
begin
   max:=-(-maxint);
   i:=-maxint;
   if odd(maxint) then
      i:=(max-((max div 2)+1))*2
   else
      i:=(max-(max div 2))*2;
   if (maxint-1<=i) and (i<=maxint) then
      writeln(' PASS...6.7.2.2-4 (CONF154)')
   else
      writeln(' FAIL...6.7.2.2-4 (CONF154)')
end.
