{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.5-3, FILE=CONF067, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This program tests if an end-of-line marker is inserted at the end }
{:of the line, if not explicitly done in the program.                }
{                                                                    }
{ The structure of a text file requires a closing linemarker.        }
{ Conforming processors will insert the linemarker automatically to  }
{ make the textfile conform.                                         }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Program parameter removed and comment changed.             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF067(output);
var
   file1 : text;
   state : (correct,wrong);
begin
   state:=correct;
   rewrite(file1);
   write(file1,'A');
   reset(file1);
   if file1^='A' then get(file1) else state:=wrong;
   if eoln(file1) and (file1^=' ') then get(file1)
      else state:=wrong;
   if not eof(file1) then state:=wrong;
   if state=correct then
      writeln(' PASS...6.4.3.5-3 (CONF067)')
   else
      writeln(' FAIL...6.4.3.5-3 (CONF067)')
end.
