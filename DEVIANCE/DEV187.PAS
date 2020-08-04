{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.2.5-10, FILE=DEV187, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:This test deviates since the IN operator must be preceded by an    }
{:ordinal-type.                                                      }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV187(output);
begin
   if '12' in [] then
      writeln(' DEVIATES...6.7.2.5-10 (DEV187), CASE(1)')
   else
      writeln(' DEVIATES...6.7.2.5-10 (DEV187), CASE(2)')
end.
