{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.4-4, FILE=CONF078, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This test checks that the domain-type of a pointer-type can be a   }
{:file-type.                                                         }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test from Paul Gilmartin.                              }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF078(output);
type
   fileptr = ^text;
var
   ptr1,ptr2,ptr3,ptr4 : fileptr;
   pass : boolean;

procedure copyandadd(var fromfile,tofile:text; ch:char);
   begin
   while not eoln(fromfile) do
      begin
      write(tofile,fromfile^);
      get(fromfile)
      end;
   write(tofile,ch);
   reset(fromfile);   reset(tofile)
   end;

procedure swapptr(var first,second:fileptr);
var
   helpptr : fileptr;
   begin
   helpptr := first;
   first := second;
   second := helpptr
   end;

procedure checkcontents(thefile:fileptr; expectedvalue:integer);
var
   actualvalue : integer;
begin
   readln(thefile^,actualvalue);
   if actualvalue <> expectedvalue then
      pass := false
end;

begin
   pass := true;
   new(ptr1);  new(ptr2);  new(ptr3);  new(ptr4);
   rewrite(ptr1^);  rewrite(ptr2^);  rewrite(ptr3^);  rewrite(ptr4^);
   write(ptr4^,'1');
   reset(ptr4^);
   copyandadd(ptr4^,ptr3^,'2');
   copyandadd(ptr3^,ptr2^,'3');
   copyandadd(ptr2^,ptr1^,'4');
   swapptr(ptr1,ptr4);  swapptr(ptr2,ptr3);
   checkcontents(ptr1,1);  checkcontents(ptr2,12);
   checkcontents(ptr3,123);  checkcontents(ptr4,1234);
   dispose(ptr1);  dispose(ptr2);  dispose(ptr3);  dispose(ptr4);
   if pass then
      writeln(' PASS...6.4.4-4 (CONF078)')
   else
      writeln(' FAIL...6.4.4-4 (CONF078)')
end.
