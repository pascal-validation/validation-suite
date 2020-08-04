{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.2-1, FILE=IMDEFB26,                                     }
{ CLASS=IMPLEMENTATIONDEFINEDBEHAVIOUR, LEVEL=0                      }
{                                                                    }
{:This program writes an empty file and then checks that eof is true.}
{                                                                    }
{ Modification History :                                             }
{   V3.1: Program parameter removed. Comment rewritten.              }
{   V5.0: Reclassified from CONFORMANCE to IMPLEMENTATION DEFINED    }
{         BEHAVIOUR.                                                 }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program IMDEFB26(output);
var
   fyle : text;
begin
   rewrite(fyle);
   reset(fyle);
   if eof(fyle) then
     begin
       writeln(' OUTPUT FROM TEST...6.6.5.2-1');
       writeln(' EOF is true for an empty file');
       writeln(' IMPLEMENTATION DEFINED BEHAVIOUR...6.6.5.2-1',
               ' (IMDEFB26)');
     end
   else
      writeln(' FAIL...6.6.5.2-1 (IMDEFB26)')
end.
