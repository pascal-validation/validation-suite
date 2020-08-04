{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.1-4, FILE=DEV055, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This program applies an undefined type to a variable to determine  }
{:whether the processor deviates by assumption of some default-type. }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV055(output);
var
   a : atype;     {undefined}
begin
   writeln(' DEVIATES...6.4.1-4 (DEV055)')
end.
