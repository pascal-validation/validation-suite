{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.1-3, FILE=DEV054, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This program tests that attempts to use types in their own         }
{:definitions are detected.                                          }
{                                                                    }
{ But it inserts a nasty scope twist by making another type with the }
{ same identifier available in an outer scope. It should be excluded }
{ from this scope, according to the Standard.                        }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Colon in write changed to comma.                           }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV054(output);
type
   x  = integer;
procedure p;
type
   x  = record
            y : x
        end;
begin
   writeln(' DEVIATES...6.4.1-3 (DEV054)')
end;
begin
   p
end.
