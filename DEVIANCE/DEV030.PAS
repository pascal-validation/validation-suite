{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.8-5, FILE=DEV030, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This program deviates because a space does not appear between a    }
{:number and a word-symbol even though it is clearly unambiguous.    }
{                                                                    }
{ Many processors are expected to deviate on this program. A check   }
{ that the character which delimits a number is not alphabetic will  }
{ suffice to detect the error.                                       }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Comment changed.                                           }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV030(output);
var
   i: integer;
begin
   i := 10div 2;
   writeln(' DEVIATES...6.1.8-5 (DEV030)')
end.
