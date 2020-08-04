{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.3-7, FILE=DEV050, CLASS=DEVIANCE, LEVEL=0                   }
{                                                                    }
{:This test checks that nil is not accepted in a                     }
{:constant-definition-part.                                          }
{                                                                    }
{ Modification History :                                             }
{   V3.1: 'p^ := 1;' added, two 'p^' changed to 'p' and writeln's    }
{         changed.                                                   }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV050(output);
const
   nowhere = nil;
var
   p : ^integer;
begin
   new(p);
   p^ := 1;
   p := nil;
   if p = nowhere then
      writeln(' DEVIATES...6.3-7 (DEV050), (1)')
   else
      writeln(' DEVIATES...6.3-7 (DEV050), (2)')
end.
