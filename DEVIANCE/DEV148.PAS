{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.3-23, FILE=DEV148, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:This test deviates by calling an extended form of new in which the }
{:case-constant does not occur in the definition of the              }
{:corresponding record-type.                                         }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV148(output);
type
   sometype = (on,off);
   answer   = (yes,no);
   rec      = record
                 case s : sometype of
                    on  : (case a : answer of
                              no  : (c:char);
                              yes : (i:integer) );
                    off : (b:boolean)
              end;
   ptr      = ^rec;
var
   p:ptr;
begin
   new(p,off,yes);
   writeln(' DEVIATES...6.6.5.3-23 (DEV148)')
end.
