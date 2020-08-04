{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9.3.4.2-1, FILE=CONF204, CLASS=CONFORMANCE, LEVEL=0         }
{                                                                    }
{:This program checks that the fixed point representation of real    }
{:numbers is correctly written to textfiles.                         }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V4.0: Test extended so that MinNumChars exceeds TotalWidth,      }
{         test renumbered from 6.9.3.5.2-1.                          }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF204(output);
var
   f : text;
   b : packed array[1..40] of char;
   i : integer;
   pass : boolean;

function isdigit(ch:char) : boolean;
   begin isdigit := (ch>= '0') and (ch <= '9') end;

begin
   pass := true;
   rewrite(f);
   write(f,0.0:4:1,1.0:6:1,-1.0:6:1,123.456:7:3,
           0.0:1:1,1.0:2:1,-1.0:3:1,123.456:4:3);
   writeln(f);
   reset(f);
   for i:=1 to 40 do
      read(f,b[i]);
   if isdigit(b[22]) and isdigit(b[23]) and isdigit(b[39])
         and isdigit(b[40]) then
      begin
      b[22]:=' '; b[23]:=' '; b[39]:=' '; b[40]:=' '
      end
   else
      pass := false;
   if (b=' 0.0   1.0  -1.0123.4  0.01.0-1.0123.4  ') and pass then
      writeln(' PASS...6.9.3.4.2-1 (CONF204)')
   else
      writeln(' FAIL...6.9.3.4.2-1 (CONF204)')
end.
