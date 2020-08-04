{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9.3.2-1, FILE=CONF200, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This test checks that the default value for the field width of a   }
{:char-type is one.                                                  }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V4.0: Renumbered from 6.9.3.3-1.                                 }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF200(output);
const
   whatitshouldbe = 'A  BC';
var
   f:text;
   a,b,c:char;
   whatwasread:packed array[1..5] of char;
   i:integer;
begin
   rewrite(f);
   a:='A';
   b:='B';
   c:='C';
   write(f,a,b:3,c);
   writeln(f);
   reset(f);
   for i := 1 to 5 do
      read(f,whatwasread[i]);
   if (whatwasread=whatitshouldbe) then
      writeln(' PASS...6.9.3.2-1 (CONF200)')
   else
      write(' FAIL...6.9.3.2-1 (CONF200)')
end.
