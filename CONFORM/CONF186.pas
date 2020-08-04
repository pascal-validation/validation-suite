{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.10-2, FILE=CONF186, CLASS=CONFORMANCE, LEVEL=0          }
{                                                                    }
{:This test checks that a field-identifier is correctly identified   }
{:when a with-statement is invoked.                                  }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Writes revised.                                            }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF186(output);
var
   r:record
       i,j:integer
     end;
   i:integer;
begin
   i:=10;
   with r do
      i:=5;
   if (i=10) and (r.i=5) then
      writeln(' PASS...6.8.3.10-2 (CONF186)')
   else
      writeln(' FAIL...6.8.3.10-2 (CONF186)')
end.
