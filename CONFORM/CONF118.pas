{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.2-2, FILE=CONF118, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This program tests that the first element of the file fyle is      }
{:assigned to the buffer variable fyle^ when the procedure reset is  }
{:used with the file.                                                }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Program parameter removed.                                 }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF118(output);
var
   fyle : text;
begin
   rewrite(fyle);
   writeln(fyle,'ABC');
   writeln(fyle,'DEF');
   reset(fyle);
   if fyle^='A' then
      writeln(' PASS...6.6.5.2-2 (CONF118)')
   else
      writeln(' FAIL...6.6.5.2-2 (CONF118)')
end.
