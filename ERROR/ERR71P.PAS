{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.8.3.5-10, FILE=ERR71P, CLASS=ERRORHANDLING, LEVEL=0,     }
{ NUMBER=51                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR71P(output);
var
   i:integer;
begin
   i:=3;
   case i of
   -3,3: writeln(' THIS LINE SHOULD GET WRITTEN')
   end;
   writeln(' PRETEST...6.8.3.5-10 (ERR71P)')
end.
