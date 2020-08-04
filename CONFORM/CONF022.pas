{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.2.1-1, FILE=CONF022, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This program includes a sample of each declaration-part in its     }
{:minimal form.                                                      }
{                                                                    }
{ Every possibility is covered elsewhere in the validation suite,    }
{ but the test is made here.                                         }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Output of FAIL addded.                                     }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF022(output);
label
   1;
const
   one = 1;
type
   small = 1..3;
var
   tiny : small;
procedure p(var x : small);
begin
   x:=1
end;
begin
   goto 1;
1: p(tiny);
   if (tiny = one) then
      writeln(' PASS...6.2.1-1 (CONF022)')
   else
      writeln(' FAIL...6.2.1-1 (CONF022)')
end.
