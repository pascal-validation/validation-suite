{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.3-3, FILE=CONF110, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This test checks that if a variable passed as a parameter involves }
{:the indexing of an array, or the dereferencing of a pointer, then  }
{:these actions are executed before the activation of the block.     }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Rewritten to include type rekptr = ^rekord  Write for      }
{         FAIL elaborated.                                           }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF110(output);
type
   rekptr = ^rekord;
   rekord = record
               a : integer;
               link : rekptr;
               back : rekptr
            end;
var
   urray : array[1..2] of integer;
   i     : integer;
   temptr,ptr : rekptr;
procedure call(arrayloctn : integer;

               ptrderef : integer);
   begin
      i:=i+1;
      ptr:=ptr^.link;
      if (urray[i-1] <> arrayloctn) or
         (ptr^.back^.a <> ptrderef) then
         writeln(' FAIL...6.6.3.3-3 (CONF110)')
      else
         writeln(' PASS...6.6.3.3-3 (CONF110)')
   end;
begin
   urray[1]:=1;
   urray[2]:=2;
   i:=1;
   new(ptr);

   ptr^.a:=1;
   new(temptr);
   temptr^.a:=2;
   ptr^.link:=temptr;
   temptr^.back:=ptr;
   call(urray[i],ptr^.a)
end.
