{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.2-12, FILE=CONF099, CLASS=CONFORMANCE, LEVEL=0            }
{                                                                    }
{:This test checks a nested self-recursive function                  }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V4.2: New test from Paul Hammond (RSRE).                         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF099(output);

function outerfactorial(i: integer): integer;
   function innerfactorial(j: integer): integer;
      begin
      if j = 0 then
         innerfactorial := 1
      else
         innerfactorial := j * outerfactorial(j-1)
      end;
   begin
   outerfactorial := innerfactorial(i)
   end;
begin
if outerfactorial(4) = 24 then
   writeln(' PASS...6.6.2-12 (CONF099)')
else
   writeln(' FAIL...6.6.2-12 (CONF099)')
end.
