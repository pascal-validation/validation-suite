{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.6.3.7.3-3, FILE=LEV1F33, CLASS=ERRORHANDLING, LEVEL=1,   }
{ NUMBER=01                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program LEV1F33(output);
var
   i : integer;
   aarray,barray : array[1..2] of integer;
procedure swap(var a,b : array[low..high : integer] of integer);
   var
      temp : integer;
   begin
   temp := a[i];
   a[i] := b[i];
   b[i] := temp
   end;
begin
   aarray[1] := 1;   barray[1] := -1;
   aarray[2] := 2;   barray[2] := -2;
   for i := 2 downto 1 do
      swap(aarray,barray);
   writeln(' PRETEST...6.6.3.7.3-3 (LEV1F33)');
end.
