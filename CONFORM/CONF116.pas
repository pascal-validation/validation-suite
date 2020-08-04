{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.4.1-1, FILE=CONF116, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This program tests that predefined standard procedures may be      }
{:redefined with no conflict.                                        }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Write for FAIL elaborated.                                 }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF116(output);
var
   i : integer;
procedure write(var a : integer);
   begin
      a:=a+2
   end;
procedure get(var a : integer);
   begin
      a:=a*2
   end;

begin
   i:=0;
   write(i);
   get(i);
   if i=4 then
      writeln(' PASS...6.6.4.1-1 (CONF116)')
   else
      writeln(' FAIL...6.6.4.1-1 (CONF116)')
end.
