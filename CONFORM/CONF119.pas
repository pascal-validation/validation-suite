{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.2-3, FILE=CONF119, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This program checks that a rewrite on the file sets eof to be      }
{:true.                                                              }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Program parameter removed.                                 }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF119(output);
var
   fyle : text;
begin
   rewrite(fyle);
   if eof(fyle) then
      writeln(' PASS...6.6.5.2-3 (CONF119)')
   else
      writeln(' FAIL...6.6.5.2-3 (CONF119)')
end.
