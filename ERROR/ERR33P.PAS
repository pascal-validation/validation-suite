{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.6.5.3-7, FILE=ERR33P, CLASS=ERRORHANDLING, LEVEL=0,      }
{ NUMBER=05                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR33P(output);
type
   subrange = 0..9999;
   rekord   = record
               name : packed array[1..15] of char;
               employeeno : subrange
              end;
var
   ptr : ^rekord;
begin
   new(ptr);
   with ptr^ do
   begin
      name:='HARRY M. MULLER';
      employeeno:=9998;
   end;
   dispose(ptr);
   writeln(' PRETEST...6.6.5.3-7 (ERR33P)')
end.
