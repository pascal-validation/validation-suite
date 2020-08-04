{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.7-13, FILE=DEV026, CLASS=DEVIANCE, LEVEL=0                }
{                                                                    }
{:This program deviates since a string is on more than one line.     }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test derived from a processor bug.                     }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV026(output);
begin
   writeln(' STRING IS ON MORE THAN ONE
             LINE');
   writeln(' DEVIATES...6.1.7-13 (DEV026)')
end.
