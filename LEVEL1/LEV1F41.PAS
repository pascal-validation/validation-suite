{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.7.3-10, FILE=LEV1F41, CLASS=CONFORMANCE, LEVEL=1        }
{                                                                    }
{:This test checks that an array parameter is correctly passed to a  }
{:component of a var conformant array where the levels of parameter  }
{:and array data are different.                                      }
{                                                                    }
{ Modification History :                                             }
{   V4.2: New test from L.Haines (Acornsoft).                        }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program LEV1F41(output);
const
   maxnamestring = 15;
type
   namestringtype = packed array[1..3,1..maxnamestring] of char;
var
   fail: boolean;
   namestring: namestringtype;
   procedure checkbounds(elow,ehigh: integer;
                         str:packed array[low..high:integer] of char);
   begin
      if (low <> elow) or (high <> ehigh) then
         fail := true
   end;
begin
   fail := false;
   namestring[1] := 'This is string1';
   checkbounds(1,maxnamestring,namestring[1]);
   if fail then
      writeln(' FAIL...6.6.3.7.3-10 (LEV1F41)')
   else
      writeln(' PASS...6.6.3.7.3-10 (LEV1F41)')
end.
