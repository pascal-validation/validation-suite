{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.8.3.5-11, FILE=ERR72P, CLASS=ERRORHANDLING, LEVEL=0,     }
{ NUMBER=51                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR72P(output);
var
   i:integer;
begin
   i:=1000;
   i:=3;
   case i of
   -3,3: writeln(' THIS LINE SHOULD GET WRITTEN')
   end;
   writeln(' PRETEST...6.8.3.5-11 (ERR72P)')
end.
