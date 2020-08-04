{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.2-26, FILE=CONF121, CLASS=CONFORMANCE, LEVEL=0          }
{                                                                    }
{:This test checks the behaviour of the procedures 'get' and 'put'   }
{:in the same program.                                               }
{                                                                    }
{ The procedures have been tested separately in tests 6.6.5.2-24     }
{ and 6.6.5.2-25.                                                    }
{                                                                    }
{ Modification History :                                             }
{   V5.1: New test by A. W. Idema ( NPL Nov 1987).                   }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF121(output);

type
    rekord = record
               country : packed array[1..10] of char;
               capital : packed array[1..10] of char
             end;

var
   f : file of rekord;
   count : integer;

begin
count := 0;
rewrite(f);
f^.country := 'holland   ';
f^.capital := 'amsterdam ';
put(f);
f^.country := 'england   ';
f^.capital := 'london    ';
put(f);
f^.country := 'sweden    ';
f^.capital := 'stockholm ';
put(f);
reset(f);
if (f^.country = 'holland   ') and
   (f^.capital = 'amsterdam ') then
   count :=count+1;
get(f);
if (f^.country = 'england   ') and
   (f^.capital = 'london    ') then
   count :=count+1;
get(f);
if (f^.country = 'sweden    ') and
   (f^.capital = 'stockholm ') then
   count :=count+1;
if count = 3 then
   writeln(' PASS...6.6.5.2-26 (CONF121)')
 else writeln(' FAIL...6.6.5.2-26 (CONF121)')
end.
