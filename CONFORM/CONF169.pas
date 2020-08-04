{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.4-1, FILE=CONF169, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This test checks a nested if-statement whose syntax is apparently  }
{:ambiguous.                                                         }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comma inserted in header. Writes elaborated for FAIL       }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF169(output);
const
   off=false;
var
   b:boolean;
begin
   for b:=false to true do
      begin
      if b then
         if off then
            writeln(' FAIL...6.8.3.4-1, IF STATEMENT(1) (CONF169)')
         else
            begin
            if not b then
                writeln(' FAIL...6.8.3.4-1, IF STATEMENT(2) (CONF169)')
            else
               writeln(' PASS...6.8.3.4-1 (CONF169)')
            end
      end
end.
