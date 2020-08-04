{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.6.6.4-5, FILE=ERR56P, CLASS=ERRORHANDLING, LEVEL=0,      }
{ NUMBER=38                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR56P(output);
type
   enumerated = (first,second,third,last);
var
   ordinal : enumerated;
begin
   ordinal:= third;
   ordinal:= pred(succ(ordinal));
   writeln(' PRETEST...6.6.6.4-5 (ERR56P)')
end.
