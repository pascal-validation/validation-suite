{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.2.5-3, FILE=CONF162, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This test checks the use of relational operations on long strings. }
{                                                                    }
{ No semantic problems but the long strings could cause              }
{ implementation difficulties.                                       }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF162(output);
var s1, s2: packed array [1..37] of char;
    i, j: integer;
begin
   s1 := 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA';
   s2 := s1;
   j := 0;
   if s1 <> s2 then
      j := j + 1;
   for i := 37 downto 1 do
      begin
      s2[i] := 'B';
      if (s2 = s1) or (s2 < s1) then
         j := j + 1
      else if s2 <= s1 then
         j := j + 1
      else if s1 > s2 then
         j := j + 1
      end;
   if s2 <> 'BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB' then
      j := j + 1;
   if j = 0 then
      writeln(' PASS...6.7.2.5-3 (CONF162)')
   else
      writeln(' FAIL...6.7.2.5-3 (CONF162)')
end.
