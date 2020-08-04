{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.9.3.1-12, FILE=ERR86P, CLASS=ERRORHANDLING, LEVEL=0,     }
{ NUMBER=58                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR86P(output);

var
   f : text;
   i : integer;

begin
     rewrite(f);
     for i := 10 downto 1 do
         write(f,' ','string':i,'REP=',i);
     writeln(' PRETEST...6.9.3.1-12 (ERR86P)');
end.
