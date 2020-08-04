{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.10-5, FILE=CONF189, CLASS=CONFORMANCE, LEVEL=0          }
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

program CONF189(output);
type
   pointer = ^recordtype;
   recordtype = record
                  data:integer;
                  link:pointer
                end;
var
   counter:integer;
   p,q:pointer;
begin
   counter:=0;
   new(p);
   p^.data:=0;
   new(q);
   q^.data:=1;
   q^.link:=nil;
   p^.link:=q;
   q:=p;
   with q^ do
   begin
      q:=link;
      if (data=0) and (q^.data=1) then
         counter:=counter+1
   end;
   with p^ do
   begin
      p:=link;
      { The first record now has no reference, so it could
        be deleted prematurely. }
      if (data=0) and (p^.data=1) then
         counter:=counter+1
   end;
   if counter=2 then
         writeln(' PASS...6.8.3.10-5 (CONF189)')
      else
         writeln(' FAIL...6.8.3.10-5 (CONF189)')
end.
