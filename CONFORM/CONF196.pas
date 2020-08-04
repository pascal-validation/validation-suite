{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9.1-3, FILE=CONF196, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This test checks that integers and reals are read correctly from a }
{:file.                                                              }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V4.0: Test altered since compile-time and run-time conversions   }
{         are not necessarily performed on the same machine.         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF196(output);
var
   f:text;
   i,j:integer;
   r,s:real;
begin
   rewrite(f);
   writeln(f,' 123 123.456 5 123E6 ');
   reset(f);
   read(f,i,r,j,s);
   if (i=123) and (r>123.4) and (r<123.5) and
      (j=5) and (s>1229E5) and (s<1231E5) then
      writeln(' PASS...6.9.1-3 (CONF196)')
   else
      if (i=123) and (j=5) then
         writeln(' FAIL...6.9.1-3, READ REAL CONVERSIONS (CONF196)')
      else
         writeln(' FAIL...6.9.1-3, READ PROCEDURE (CONF196)')
end.
