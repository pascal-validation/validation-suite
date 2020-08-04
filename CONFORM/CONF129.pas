{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.3-26, FILE=CONF129, CLASS=CONFORMANCE, LEVEL=0          }
{                                                                    }
{:This test checks that the first parameter of dispose can be a      }
{:function-designator.                                               }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test from Paul Gilmartin.                              }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }
 
program CONF129(output); 
type 
   recptr = ^rec; 
   rec = record 
            i : integer; 
            next : recptr 
         end; 
var 
   ptr1 : recptr; 
 
function alterptr(ptr:recptr) : recptr; 
begin 
   alterptr := ptr^.next 
end; 

begin 
   new(ptr1); 
   new(ptr1^.next); 
   dispose(alterptr(ptr1)); 
   writeln(' PASS...6.6.5.3-26 (CONF129)') 
end.
