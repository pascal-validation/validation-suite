{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.3-6, FILE=DEV049, CLASS=DEVIANCE, LEVEL=0                   }
{                                                                    }
{:This program deviates because constants must not appear in their   }
{:own definition.                                                    }
{                                                                    }
{ The Standard now explicitly forbids a constant to appear in its    }
{ own definition. In the following program the definition 'ten =     }
{ ten' is in the scope of the second use of 'ten' and accordingly is }
{ in error.                                                          }
{                                                                    }
{ Modification History :                                             }
{   V4.0: Comment corrected.                                         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV049(output);
const
   ten = 10;
procedure p;
const
   ten = ten;
begin
   if ten=10 then
      writeln(' DEVIATES...6.3-6 (DEV049), SCOPE ERROR')
   else
      writeln(' DEVIATES...6.3-6 (DEV049), DEFINITION POINT ERROR')
end;
begin
   p
end.
