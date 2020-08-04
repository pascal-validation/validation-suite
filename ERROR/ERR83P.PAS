{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.9.3.1-2, FILE=ERR83P, CLASS=ERRORHANDLING, LEVEL=0,      }
{ NUMBER=58                                                          }
{                                                                    }
{ Modification History :                                             }
{   V4.3: Write changed to Writeln line 10.                          }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR83P(output);
var
   f:text;
   i:integer;
begin rewrite (f);
   for i:=10 downto 1 do
      writeln(f,' ','.':i, 'REP=',i);
   writeln(' PRETEST...6.9.3.1-2 (ERR83P)')
end.
