{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.3-27, FILE=CONF130, CLASS=CONFORMANCE, LEVEL=0          }
{                                                                    }
{:This test checks that new can be called with a component of packed }
{:structure as its parameter.                                        }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V4.2: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }
 
program CONF130(output); 
type 
   bit = 0..1; 
   ptrlist = ^listbit; 
   listbit = packed record 
                b: bit; 
                next: ptrlist 
             end; 
var
   p: ptrlist; 
procedure makelist(length, int: integer; var p: ptrlist); 
var 
   temp: ptrlist; 
   begin 
   new(temp); 
   p := temp; 
   while length <> 1 do 
      begin 
      temp^.b := ord(odd(int)); 
      int := int div 2; 
      new(temp^.next); 
      temp := temp^.next; 
      length := length - 1 
      end; 
   temp^.b := int; 
   temp^.next := nil 
   end; 
function checklist(length, int: integer; p: ptrlist): boolean; 
   begin 
   if length = 0 then
      checklist := true 
   else 
      checklist := (p^.b=ord(odd(int)) ) and 
                   checklist(length-1, int div 2, p^.next) 
   end; 
begin 
makelist(14, 15038, p); 
if checklist(14, 15038, p) then 
   writeln(' PASS...6.6.5.3-27 (CONF130)') 
else 
   writeln(' FAIL...6.6.5.3-27 (CONF130)') 
end.
