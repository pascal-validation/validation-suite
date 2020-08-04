{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.9-11, FILE=DEV226, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:This program tests whether a real number can be assigned to a      }
{:for-statement control-variable.                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Value check corrected. Comment and writes expanded. Was    }
{         previously 6.8.3.9-10.                                     }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV226(output);
var
   i:integer;
   counter:integer;
begin
   counter:=0;
   for i:=0.0 to 3.5 do
      counter:=counter+1;
   if counter=4 then
      writeln(' DEVIATES...6.8.3.9-11 (DEV226),',
              ' FOR EXPRESSION TRUNCATED')
   else
      if counter=5 then
         writeln(' DEVIATES...6.8.3.9-11 (DEV226),',
                 ' FOR EXPRESSION ROUNDED')
      else
         writeln(' DEVIATES...6.8.3.9-11 (DEV226),',
                 ' FOR EXPRESSION')
end.
