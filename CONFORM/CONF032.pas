{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.3-1, FILE=CONF032, CLASS=CONFORMANCE, LEVEL=0               }
{                                                                    }
{:This program exhibits all legal productions for a constant in a    }
{:constant-definition.                                               }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Added value check, and changed identifier 'minustentoo'    }
{         to 'minustoo' so as to avoid non-uniqueness in first       }
{         eight characters.                                          }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF032(output);
const
   ten = 10;
   minusten = -10;
   minustoo = -ten;
   decade = ten;
   dot = '.';
   stars = '****';
   on = true;
   pi = 3.1415926;
   minuspi = - pi;
begin
   if (ten + minusten + decade + minustoo = 0) and
      (dot = '.') and (stars = '****') and
      (on =true) and (abs(pi+minuspi) < 0.001) then
      writeln(' PASS...6.3-1 (CONF032)')
   else
      writeln(' FAIL...6.3-1 (CONF032)')
end.
