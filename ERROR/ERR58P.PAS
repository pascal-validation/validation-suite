{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.6.6.4-7, FILE=ERR58P, CLASS=ERRORHANDLING, LEVEL=0,      }
{ NUMBER=37                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR58P(output);
var
   i:0..1000;
   c:char;
begin
   for i:=0 to 1000 do
      c:=chr(0+ord('0'));
   writeln(' PRETEST...6.6.6.4-7 (ERR58P)')
end.
