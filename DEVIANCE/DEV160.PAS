{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.6.4-8, FILE=DEV160, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test deviates since the parameter to the function CHR must be }
{:an integer-type.                                                   }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV160(output);
var
   c : char;
begin
   c:=chr(1.0);
   writeln(' DEVIATES...6.6.6.4-8 (DEV160)')
end.
