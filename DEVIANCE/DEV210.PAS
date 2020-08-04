{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.5-5, FILE=DEV210, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test checks that the processor detects real case-constants    }
{:and a real case-index, even when the values are integers.          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV210(output);
var
   i,counter:integer;
   r:real;
begin
   counter:= 0;
   for i:= 1 to 4 do
   begin
      r:=i;
      case r of
      1.0: counter:=counter+1;
      2.0: counter:=counter+1;
      3.0: counter:=counter+1;
      4e0: counter:=counter+1
      end
   end;
   if counter=4 then
      writeln(' DEVIATES...6.8.3.5-5 (DEV210), CASE CONSTANTS(1)')
   else
      writeln(' DEVIATES...6.8.3.5-5 (DEV210), CASE CONSTANTS(2)')
end.
