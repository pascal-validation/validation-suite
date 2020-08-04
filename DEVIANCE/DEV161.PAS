{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.6.4-9, FILE=DEV161, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test checks that the ord function may not be applied to a     }
{:pointer.                                                           }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test from Paul Gilmartin.                              }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV161(output);
var
   ptr : ^integer;
begin
   new(ptr);
   ptr^ := 999;
   if ord(ptr) = 999 then
      writeln(' COINCIDENCE');
   writeln(' DEVIATES...6.6.6.4-9 (DEV161)')
end.
