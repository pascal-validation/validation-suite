{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.6.5.3-11, FILE=ERR37P, CLASS=ERRORHANDLING, LEVEL=0,     }
{ NUMBER=43                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR37P(output);
type
   pointer = ^integer;
var
   p : pointer;
begin
   new(p);
   p^ := 10;
   if p = nil then
      writeln(' POINTER = NIL')
   else
      if p^ = 10 then
         writeln(' EXPECTED RESULT')
      else
         writeln(' POINTER VALUE UNKNOWN');
   dispose(p);
   writeln(' PRETEST...6.6.5.3-11 (ERR37P)')
end.
