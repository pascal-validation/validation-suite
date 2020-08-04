{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.6.5.3-9, FILE=ERR35P, CLASS=ERRORHANDLING, LEVEL=0,      }
{ NUMBER=25                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR35P(output);
type
   two      = (a,b);
   rekord   = record
               case tagfield:two of
                  a : (m : boolean);
                  b : (n : char)
              end;
var
   ptr : ^rekord;
   r   : rekord;
begin
   new(ptr,b);
   r.tagfield:=b;
   r.n:='A';
   writeln(' PRETEST...6.6.5.3-9 (ERR35P)')
end.
