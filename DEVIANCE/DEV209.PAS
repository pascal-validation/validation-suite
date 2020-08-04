{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.5-4, FILE=DEV209, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test checks that the processor detects that case-constants    }
{:and the case-index are of different types.                         }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Part of test removed as it duplicated other test.          }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV209(output);
var
   i,counter:integer;
begin
   counter:= 0;
   for i:= 1 to 2 do
      case i of
      1: counter:=counter+1;
      2.0: counter:=counter+1
      end;
   if counter=2 then
      writeln(' DEVIATES...6.8.3.5-4 (DEV209), CASE CONSTANTS(1)')
   else
      writeln(' DEVIATES...6.8.3.5-4 (DEV209), CASE CONSTANTS(2)')
end.
