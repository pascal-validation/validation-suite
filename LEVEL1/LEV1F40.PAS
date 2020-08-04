{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.7.3-9, FILE=LEV1F40, CLASS=CONFORMANCE, LEVEL=1         }
{                                                                    }
{:This test checks that an array parameter is correctly passed to a  }
{:var conformant array where the levels of parameter and array data  }
{:are different.                                                     }
{                                                                    }
{ Modification History :                                             }
{   V4.2: New test from L.Haines (Acornsoft).                        }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program LEV1F40(output);
type
   entry = packed array [1..2] of char;
var
   fail: boolean;
   a: entry;
procedure fillrec(item: entry);
   procedure fillfield(var field:
                           packed array [low..high: integer] of char);
      begin
         if (low <> 1) or (high <> 2) then
            fail := true
      end;
   begin
      fillfield(item)
   end;
begin
   fail := false;
   a := '12';
   fillrec(a);
   if fail then
      writeln(' FAIL...6.6.3.7.3-9 (LEV1F40)')
   else
      writeln(' PASS...6.6.3.7.3-9 (LEV1F40)')
end.
