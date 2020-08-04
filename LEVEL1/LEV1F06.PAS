{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.7-1, FILE=LEV1F06, CLASS=CONFORMANCE, LEVEL=1           }
{                                                                    }
{:This program checks that conformant arrays can appear as actual    }
{:parameters to the procedure pack.                                  }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program LEV1F06(output);
var
   fail: boolean;
   a: array [-1 .. 1] of char;
   z: packed array [1 .. 3] of char;
procedure p( var ca: array[la..ua: integer] of char;
             var cz: packed array[lz..uz: integer] of char);
   var
      i: integer;
   begin
   for i := la to ua do
       ca[i] := chr(i - la + ord('0'));
   pack(a, -1, cz);
   fail := z <> '012';
   z[1] := '9';
   pack(ca, la, z);
   if z <> '012' then
      fail := true
   end;
begin
p(a, z);
if fail then
   writeln(' FAIL...6.6.3.7-1 (LEV1F06)')
else
   writeln(' PASS...6.6.3.7-1 (LEV1F06)')
end.
