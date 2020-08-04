{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.10-13, FILE=CONF213, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:A single test that checks external file binding for text files.    }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V4.2: New test.                                                  }
{   V4.3: Test renumbered from 6.10-12 to 6.10-13. Test (r<>pr)      }
{         replaced by ((r<0.999*pr) or (r>1.001*pr)).                }
{   V5.0: Test ((r<0.999*pr) or (r>1.001*pr)) changed to be          }
{         parameters of the ABS function.                            }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }


program CONF213(output,textfile);
type
   filetype= text;
var
   textfile: filetype;
   failed : boolean;
   inchar : char;
   data : packed array [1..3] of char;
   i : integer;
procedure wr(pch: char; pi: integer; pr: real);
   begin
   writeln(textfile, pch, pi,' ', pr)
   end;
procedure check(pch: char; pi: integer; pr: real);
   var
      ch: char;
       i: integer;
       r: real;
   begin
   readln(textfile, ch, i, r);
   if    (ch<>pch)
      or (i<>pi)
      or (abs(r) < abs(0.999*pr))
      or (abs(r) > abs(1.001*pr))
    then
      failed := true;
   end;
begin
failed := false;
data := 'WCE';
i := 1;
repeat
   inchar := data[i];
   write(' ACTION PERFORMED : ');
   case inchar of
      'C' : writeln('C (CHECK)');
      'W' : writeln('W (WRITE)');
      'E' : writeln('E (END)')
   end;
   if inchar = 'C' then
      begin
      reset(textfile);
      check('a',      3,   4.5);
      check('z',     50, 16.25);
      check(';',    -30, 3.125);
      check('Z',   -139, 100.0);
      check('0',      0,-100.0);
      check('9', maxint,1000.0);
      check('(',-maxint,3030.0);
      if not eof(textfile) then
         failed := true;
      end
   else if inchar = 'W' then
       begin
       rewrite(textfile);
       wr('a',      3,   4.5);
       wr('z',     50, 16.25);
       wr(';',    -30, 3.125);
       wr('Z',   -139, 100.0);
       wr('0',      0,-100.0);
       wr('9', maxint,1000.0);
       wr('(',-maxint,3030.0);
       end;
   i := i + 1
until inchar = 'E';
if failed then
   writeln(' FAIL...6.10-13 (CONF213)')
else
   writeln(' PASS...6.10-13 (CONF213)')
end.
