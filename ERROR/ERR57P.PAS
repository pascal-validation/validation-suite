{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.6.6.4-6, FILE=ERR57P, CLASS=ERRORHANDLING, LEVEL=0,      }
{ NUMBER=39                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR57P(output);
type
   enumerated = (first,second,third,fourth,last);
var
   ordinal : enumerated;
begin
   ordinal:=second;
   if pred(ordinal) < first then ;
   writeln(' PRETEST...6.6.6.4-6 (ERR57P)')
end.
