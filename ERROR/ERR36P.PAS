{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.6.5.3-10, FILE=ERR36P, CLASS=ERRORHANDLING, LEVEL=0,     }
{ NUMBER=25                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR36P(output);
type
   two      = (a,b);
   rekord   = record
               case tagfield:two of
                  a : (m : boolean);
                  b : (n : char)
              end;
var
   ptr : ^rekord;
procedure error;
   begin
      writeln(' PRETEST...6.6.5.3-10 (ERR36P)')
   end;
begin
   new(ptr,a);
   ptr^.tagfield := a;
   ptr^.m:=true; error
end.
