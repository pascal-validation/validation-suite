{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.2-6, FILE=DEV003, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This program deviates because spaces appear within the five        }
{:special symbols.                                                   }
{                                                                    }
{ A processor with cunning error recovery may be able to accept the  }
{ program, but should be able to detect the errors.                  }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Comment changed.                                           }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV003(output);
var
   i: 1 . . 2;
begin
   i : = 1;
   if (i < = 2) and (i > = 0) then
      writeln(' DEVIATES...6.1.2-6 (DEV003), TOKENS 1')
   else if i < > 1 then
      writeln(' DEVIATES...6.1.2-6 (DEV003), TOKENS 2')
   else
      writeln(' DEVIATES...6.1.2-6 (DEV003), TOKENS 3')
end.
