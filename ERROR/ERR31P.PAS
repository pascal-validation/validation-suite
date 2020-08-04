{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.6.5.3-5, FILE=ERR31P, CLASS=ERRORHANDLING, LEVEL=0,      }
{ NUMBER=24                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR31P(output);
type
   rekord = record
             a : integer;
             b : boolean
            end;
var
   ptr : ^rekord;
begin
   new (ptr);
   dispose(ptr);
   writeln(' PRETEST...6.6.5.3-5 (ERR31P)')
end.
