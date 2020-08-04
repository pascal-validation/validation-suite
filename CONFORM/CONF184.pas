{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.9-28, FILE=CONF184, CLASS=CONFORMANCE, LEVEL=0          }
{                                                                    }
{:Check the evaluation order of the initial-value and final-value in }
{:the for-statement.                                                 }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V4.3: New test suggested by Jim Welsh                            }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF184(output);

var
   initial, count, control:integer;
   function final: integer;
      begin
      final := 10;
      initial := 2
      end;
begin
initial := 1;
count := 0;
for control := initial to final do
   count := count + 1;
if count = 10 then
   writeln(' PASS...6.8.3.9-28 (CONF184)')
else
   writeln(' FAIL...6.8.3.9-28 (CONF184)')
end.
