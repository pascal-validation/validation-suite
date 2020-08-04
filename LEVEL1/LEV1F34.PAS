{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.7.3-3, FILE=LEV1F34, CLASS=ERRORHANDLING, LEVEL=1,      }
{ NUMBER=01                                                          }
{                                                                    }
{:The purpose of this test is to exhibit the way the processor       }
{:handles the error resulting from an access to an element of an     }
{:array passed as a conformant array parameter when the index is     }
{:outside the range of its associated index-type.                    }
{                                                                    }
{ Modification History :                                             }
{   V4.0: All elements of aarray and barray are now assigned         }
{         values, reference number in headers corrected, initial     }
{         comment corrected.                                         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{   V5.3: Placed 'ERROR' as the first line executed.                 }
{   V5.4: Added 5.3 comment                                          }
{                                                                    }

program LEV1F34(output);
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
   writeln(' ERROR...6.6.3.7.3-3 (LEV1F34)');
   aarray[1] := 1;   barray[1] := -1;
   aarray[2] := 2;   barray[2] := -2;
   for i := 2 downto 0 do
      swap(aarray,barray);
   writeln(' ERROR NOT DETECTED...6.6.3.7.3-3 (D.01)')
end.
