{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.4.6-10, FILE=ERR08P, CLASS=ERRORHANDLING, LEVEL=0,       }
{ NUMBER=07                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR08P(output);
type
   subrange = 0..5;
var
   i : subrange;

procedure test(a : subrange);
begin
   writeln(' THE VALUE OF A IS ', a);
   a:=5
end;

begin
   i:=5;
   test(i*1);
   writeln(' PRETEST...6.4.6-10 (ERR08P)')
end.
