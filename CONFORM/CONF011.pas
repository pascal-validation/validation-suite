{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.6-1, FILE=CONF011, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This program simply tests if labels are permitted.                 }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Test revised so as to include the limits of the closed     }
{         interval of 'apparent values' by which labels are          }
{         distinguished.                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF011(output);
label
   0,2,3,4,9999;
var
   x:(a,b,c,d,e,f);
begin
      x := a;
      goto 4;
   0: x := succ(x);
      goto 9999;
   2: x := succ(x);
      goto 3;
   3: x := succ(x);
      goto 0;
   4: x := succ(x);
      goto 2;
9999: x := succ(x);
      if x = f then
         writeln(' PASS...6.1.6-1 (CONF011)')
      else
         writeln(' FAIL...6.1.6-1 (CONF011)')
end.
