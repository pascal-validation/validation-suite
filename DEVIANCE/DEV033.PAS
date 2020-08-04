{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.2.1-5, FILE=DEV033, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This test deviates since labels may not be given two sites in the  }
{:statement-part.                                                    }
{                                                                    }
{ Since the label is not used in a goto, this program is a stringent }
{ test.                                                              }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Write extended. Was previously 6.2.1-4.                    }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV033(output);
label
   9;
begin
   9: write(' DEVIATES...6.2.1-5, (DEV033)');
      if true <> false then
         9: writeln(' MULTIPLY-SITED LABEL')
end.
