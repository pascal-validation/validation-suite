{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.5-8, FILE=IMDEFB02, CLASS=IMPLEMENTATIONDEFINEDBEHAVIOUR, }
{ LEVEL=0                                                            }
{                                                                    }
{:This test checks that lines of up to 72 characters are permitted.  }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test. The test that was here in previous versions      }
{         has now been moved to 6.1.1-2 to correspond with DP7185.   }
{   V4.2: Short-form message included in output.                     }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program IMDEFB02(output);
const
   i                                =                                 1;
begin
if i = 1 then
  begin
    writeln(' OUTPUT FROM TEST...6.1.5-8');
    writeln(' Lines of at least 72 characters are permitted');
    writeln(' IMPLEMENTATION DEFINED BEHAVIOUR...6.1.5-8 (IMDEFB02)');
  end
else
   writeln(' FAIL...6.1.5-8 (IMDEFB02)')
end.
