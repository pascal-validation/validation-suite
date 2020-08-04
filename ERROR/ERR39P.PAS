{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.6.5.3-14, FILE=ERR39P, CLASS=ERRORHANDLING, LEVEL=0,     }
{ NUMBER=20                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR39P(output);
type
   rec = record
            case tag : boolean of
               true  : (b1,b2 : 1..10);
               false : (b3 : 11..20)
         end;
var
   ptr : ^rec;
begin
   new(ptr,true);
   dispose (ptr,true);
   writeln(' PRETEST...6.6.5.3-14 (ERR39P)')
end.
