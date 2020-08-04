{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.6.5.3-4, FILE=ERR30P, CLASS=ERRORHANDLING, LEVEL=0,      }
{ NUMBER=23                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR30P(output);
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
   writeln(' PRETEST...6.6.5.3-4 (ERR30P)')
end.
