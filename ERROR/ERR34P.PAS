{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.6.5.3-8, FILE=ERR34P, CLASS=ERRORHANDLING, LEVEL=0,      }
{ NUMBER=25                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR34P(output);
type
   two      = (a,b);
   rekord   = record
               case tagfield:two of
                  a : (m : boolean);
                  b : (n : char)
              end;
var
   ptr      : ^rekord;
   r        : rekord;
begin
   new(ptr,a);
   ptr^.tagfield := a;
   ptr^.m:=true;
   writeln(' PRETEST...6.6.5.3-8 (ERR34P)')
end.
