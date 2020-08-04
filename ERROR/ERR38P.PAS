{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.6.5.3-13, FILE=ERR38P, CLASS=ERRORHANDLING, LEVEL=0,     }
{ NUMBER=19                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR38P(output);
type
   rec = record
           case tag : boolean of
              true  : (b1,b2 : boolean);
              false : (i1,i2 : integer)
         end;
var
   ptr : ^rec;
begin
   new(ptr,false);
   ptr^.tag := false;
   writeln(' PRETEST...6.6.5.3-13 (ERR38P)')
end.
