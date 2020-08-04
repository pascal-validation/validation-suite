{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.2-11, FILE=CONF098, CLASS=CONFORMANCE, LEVEL=0            }
{                                                                    }
{:This test checks that a function with side-effects is handled      }
{:correctly.                                                         }
{                                                                    }
{ A function result might be returned incorrectly by using a single  }
{ result register for all activations of the formal function, or by  }
{ treating the function result as a formal fictitious variable. This }
{ test attempts to detect such errors by a recursive call and        }
{ side-effects following the assignment to the function-identifier.  }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test from Paul Gilmartin.                              }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF098(output);
var
   global : integer;
function f(i:integer) : integer;
   begin
   f := i + 10;
   if i = 1 then global := f(2) + 1
   end;

begin
   global := f(1);
   if global <> 11 then
      writeln(' FAIL...6.6.2-11 (CONF098), GLOBAL = ', global:1)
   else
      writeln(' PASS...6.6.2-11 (CONF098)')
end.
