{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.4-11, FILE=CONF065, CLASS=CONFORMANCE, LEVEL=0          }
{                                                                    }
{:This test checks that packing applies to one level only using a    }
{:set in a record.                                                   }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V4.3: New test                                                   }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF065(output);
type
   digit = 0..9;
   sdigit = set of 0..9;
   psdigit = packed set of 0..9;
var
   d: digit;
   vudigit: sdigit;
   vpdigit: psdigit;
   recpp: packed record
          x: psdigit;
          end;
   recpu: packed record
          x: sdigit;
          end;
   recup: record
          x: psdigit;
          end;
   recuu: record
          x: sdigit;
          end;
   fail: boolean;
begin
fail := false;
recpp.x := []; recpu.x := [];
recup.x := []; recuu.x := [];
vudigit := []; vpdigit := [];
for d := 0 to 9 do
   begin
   vudigit := vudigit + [d];
   vpdigit := vpdigit + [d];
   if vudigit <> recpu.x + [d] then
      fail := true;
   if vudigit <> recuu.x + [d] then
      fail := true;
   if vpdigit <> recpp.x + [d] then
      fail := true;
   if vpdigit <> recup.x + [d] then
      fail := true;
   recpu.x := vudigit;
   recuu.x := recpu.x;
   recpp.x := vpdigit;
   recup.x := recpp.x;
   end;
if fail then
   writeln(' FAIL...6.4.3.4-11 (CONF065)')
else
   writeln(' PASS...6.4.3.4-11 (CONF065)')
end.
