{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.10-11, FILE=CONF212, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:A single test that checks external file binding for binary files.  }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V4.2: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF212(output,binfile);

type
    rectype = record
              ch: char;
              b : boolean;
              i : integer;
              r : real
              end;

    filetype= file of rectype;
var
   binfile: filetype;
   failed : boolean;
   inchar : char;
   data : packed array [1..3] of char;
   i : integer;
procedure wr(pch: char; pb: boolean; pi: integer;
        pr: real);
   var x: rectype;
   begin
   with x do
      begin
      ch:=pch; b:=pb; i:=pi; r:=pr
      end;
   write(binfile, x)
   end;
procedure check(pch: char; pb: boolean; pi: integer;
             pr: real);
   var x: rectype;
   begin
   read(binfile, x);
   with x do
      if (ch<>pch) or (b<>pb) or (i<>pi) or (r<>pr) then
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
      reset(binfile);
      check('a', true,      3,   4.5);
      check('z',false,     50, 16.25);
      check(';', true,    -30, 3.125);
      check('Z',false,   -139, 100.0);
      check('0', true,      0,-100.0);
      check('9', true, maxint,1000.0);
      check('(',false,-maxint,3030.0);
      if not eof(binfile) then
         failed := true;
      end
   else if inchar = 'W' then
      begin
      rewrite(binfile);
      wr('a', true,      3,   4.5);
      wr('z',false,     50, 16.25);
      wr(';', true,    -30, 3.125);
      wr('Z',false,   -139, 100.0);
      wr('0', true,      0,-100.0);
      wr('9', true, maxint,1000.0);
      wr('(',false,-maxint,3030.0);
      end;
   i := i + 1
until inchar = 'E';
if failed then
   writeln(' FAIL...6.10-11 (CONF212)')
else
   writeln(' PASS...6.10-11 (CONF212)')
end.
