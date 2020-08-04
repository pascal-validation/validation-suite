{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.10-3, FILE=CONF187, CLASS=CONFORMANCE, LEVEL=0          }
{                                                                    }
{:This test checks that the record-variable-list of a with-statement }
{:is evaluated in the correct order.                                 }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Write for PASS shortened.                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF187(output);
var
   r1:record
        i,j,k:integer
      end;
   r2:record
        i,j:integer
      end;
   r3:record
        i:integer
      end;
begin
   with r1 do
   begin
      i:=0;
      j:=0;
      k:=0
   end;
   with r2 do
   begin
      i:=0;
      j:=0
   end;
   with r3 do
      i:=0;
   with r1,r2,r3 do
   begin
      i:=5;
      j:=6;
      k:=7
   end;
   if(r1.i=0) and (r1.j=0) and (r2.i=0) and (r1.k=7)
      and (r2.j=6) and (r3.i=5) then
      writeln(' PASS...6.8.3.10-3 (CONF187)')
   else
      writeln(' FAIL...6.8.3.10-3 (CONF187)')
end.
