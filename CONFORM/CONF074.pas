{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.5-10, FILE=CONF074, CLASS=CONFORMANCE, LEVEL=0          }
{                                                                    }
{:This test checks that packed non-text local files are processed    }
{:correctly.                                                         }
{                                                                    }
{ This test explores the reading and writing of files of type other  }
{ than text (or file of char) to establish that they are             }
{ implemented. Test patterns are written and read back in a series   }
{ of test procedures. This test involves packed pointer types.       }
{                                                                    }
{ Modification History :                                             }
{   V4.0: Comment corrected.                                         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF074(output);
const
   Limit     = 191;
   MostNeg   = - maxint;
type
   PData     = ^ Data;
   Data      = packed record
                  k : integer;
                  p : PData
               end;
var
   result    : (pass,fail);
   f         : packed file of PData;
   head,temp : PData;
   i         : 1..Limit;
   j         : MostNeg..Limit;

begin
   { Construct linked list }
   head:=nil;
   for i:=1 to Limit do begin
      new(temp);
      with temp^ do begin k:=i; p:=head end;
      head:=temp
   end;

   { Write file of pointers }
   rewrite(f); temp:=head;
   for i:=1 to Limit-1 do begin
      f^:=temp^.p; put(f); temp:=temp^.p
   end;
   f^:=temp^.p; put(f);

   { Read file back and check it }
   result:=pass;  { anticipatory }
   reset(f); j:=Limit; temp:=head;
    while not eof(f) do begin
      if temp=nil then
         result:=fail
      else
         begin
            if (f^<>temp^.p) or (j<>temp^.k) then result:=fail;
            temp:=temp^.p
         end;
      get(f);
      j:=pred(j)
   end;
   if j<>0 then result:=fail;
   if result=pass then
      writeln(' PASS...6.4.3.5-10 (CONF074)')
   else
      writeln(' FAIL...6.4.3.5-10 (CONF074)')
end.
