{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.2.5-12, FILE=DEV188, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:This test deviates since the IN operator must be followed by an    }
{:expression which possesses a set-type.                             }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV188(output);
begin
   if '1' in '12' then
      writeln(' DEVIATES...6.7.2.5-12 (DEV188), CASE(1)')
   else
      writeln(' DEVIATES...6.7.2.5-12 (DEV188), CASE(2)')
end.
