{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.8-1, FILE=LEV1F42, CLASS=DEVIANCE, LEVEL=1              }
{                                                                    }
{:The actual parameters shall possess the same index-types as the    }
{:corresponding formal parameters that occur in a conformant array   }
{:parameter specification.                                           }
{                                                                    }
{ This is not the case in this program, as the index-types differ,   }
{ so it deviates from the Standard.                                  }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program LEV1F42(output);
var
   a : array[false..true] of real;
procedure p(var r : array[low..high : integer] of real);
   var
      i : integer;
   begin
   for i := low to high do
      r[i] := i
   end;
begin
   p(a);
   writeln(' DEVIATES...6.6.3.8-1 (LEV1F42)')
end.
