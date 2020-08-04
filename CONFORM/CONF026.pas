{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.2.2-2, FILE=CONF026, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This test checks if a predefined identifier can be redefined.      }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Failure message altered to give reason.                    }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF026(output);
var
   true : boolean;
begin
   true:=false;
   if true = false then
      writeln(' PASS...6.2.2-2 (CONF026)')
   else
      writeln(' FAIL...6.2.2-2 (CONF026)')
end.
