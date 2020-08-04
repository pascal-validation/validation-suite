{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.5-1, FILE=CONF170, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This test checks that a minimal case-statement is accepted.        }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Write shortened.                                           }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF170(output);
var
   i:integer;
begin
   i:=1;
   case i of
   1:
   end;
   writeln(' PASS...6.8.3.5-1 (CONF170)')
end.
