{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.2.2-1, FILE=CONF035, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This program tests that the standard simple-types have all been    }
{:implemented.                                                       }
{                                                                    }
{ They are denoted by predefined type identifiers.                   }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Value check added. Comment and write in case of failure    }
{         revised.                                                   }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF035(output);
var
   a : integer;
   b : real;
   c : boolean;
   d : char;
begin
   a:=6*2+3;
   b:=3.14159*2;
   c:=(a=15);
   d:='Z';
   if (a = 15) and (b < 6.284) and (b > 6.282)
      and (c =true) and (d = 'Z') then
      writeln(' PASS...6.4.2.2-1 (CONF035)')
   else
      writeln(' FAIL...6.4.2.2-1 (CONF035)')
end.
