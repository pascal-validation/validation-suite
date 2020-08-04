{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.2.2-5, FILE=CONF029, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This test checks the scope conformance of records.                 }
{                                                                    }
{ As for the other conformance tests in this section, it is possible }
{ to redefine a field-identifier of a record within the same scope   }
{ as this record.                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Failure message altered to give reason. Was previously     }
{         6.2.2-6.                                                   }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF029(output);
var
   j : integer;
   x : record
         j:integer
       end;
begin
   j:=1;
   x.j:=2;
   with x do
      j:=3;
   if (j=1) and (x.j=3) then writeln(' PASS...6.2.2-5 (CONF029)')
   else  writeln(' FAIL...6.2.2-5 (CONF029)')
end.
