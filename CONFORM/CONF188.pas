{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.10-4, FILE=CONF188, CLASS=CONFORMANCE, LEVEL=0          }
{                                                                    }
{:This test checks that the selection of a variable in the           }
{:record-variable-list is performed before the component statement   }
{:is executed.                                                       }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Writes revised.                                            }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF188(output);
var
   a:array[1..2] of record
                      i,j:integer
                    end;
   k:integer;
begin
   a[2].i:=5;
   k:=1;
   with a[k] do
   begin
      j:=1;
      k:=2;
      i:=2
   end;
   if (a[2].i=5) and (a[1].i=2) then
      writeln(' PASS...6.8.3.10-4 (CONF188)')
   else
      writeln(' FAIL...6.8.3.10-4 (CONF188)')
end.
