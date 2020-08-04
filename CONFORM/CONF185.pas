{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.10-1, FILE=CONF185, CLASS=CONFORMANCE, LEVEL=0          }
{                                                                    }
{:This program checks the implementation of the with-statement.      }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Writes revised.                                            }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF185(output);
var
   r1:record
        a,b:integer
      end;
   r2:record
        c,d:integer
      end;
   r3:record
        e,f:integer
      end;
   counter:integer;
begin
   counter:=0;
   with r1 do
      a:=5;
   with r1,r2,r3 do
   begin
      e:=a;
      c:=a
   end;
   with r2 do
      if c=5 then
         counter:=counter+1;
   if r2.c=5 then
      counter:=counter+1;
   if counter=2 then
      writeln(' PASS...6.8.3.10-1 (CONF185)')
   else
      writeln(' FAIL...6.8.3.10-1 (CONF185)')
end.
