{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.3-24, FILE=DEV149, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:This test supplies the extended form of new with two               }
{:case-constants, both of which belong to the same tag-type.         }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV149(output);
type
   sometype = (on, off);
   answer   = (yes, no);
   rec      = record
                 case s:sometype of
                    on : (case a:answer of
                             no : (c:char);
                             yes: (i:integer) );
                    off: (b:boolean)
              end;
   ptr      = ^rec;
var
   p:ptr;
begin
   new(p,on,off);
   writeln(' DEVIATES...6.6.5.3-24 (DEV149)')
end.
