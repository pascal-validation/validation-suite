{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.5-2, FILE=IMDEFB16,                                     }
{ CLASS=IMPLEMENTATIONDEFINEDBEHAVIOUR, LEVEL=0                      }
{                                                                    }
{:This test checks that an 'empty record' can be written to and read }
{:from a local file.                                                 }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Program parameter removed.                                 }
{   V5.0: Line 21 removed - suggested by Athol Hay. Reclassified     }
{         from CONFORMANCE to IMPLEMENTATION DEFINED BEHAVIOUR.      }
{   V5.1: Short form message re-written to be less prescriptive of   }
{         behaviour sought. Space added before IMPLEMENTATION        }
{         DEFINED BEHAVIOUR in line 42.                              }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program IMDEFB16(output);
var
     FileOfText : text;
     crash : boolean;

     procedure ahaa;
     begin
        if (crash=false) then writeln(' FAIL...6.4.3.5-2 (IMDEFB16)');
        crash:=true
     end;

begin
        crash:=false;
        rewrite(FileOfText);
        writeln(FileOfText);
        writeln(FileOfText,'ABC');         {characters and linemarker}
        reset(FileOfText);
        if eoln(FileOfText) and (FileOfText^=' ') then get(FileOfText)
        else ahaa;
        if FileOfText^='A' then get(FileOfText)
        else ahaa;
        if FileOfText^='B' then get(FileOfText)
        else ahaa;
        if FileOfText^='C' then get(FileOfText)
        else ahaa;
        if eoln(FileOfText) and (FileOfText^=' ') then get(FileOfText)
        else ahaa;
        if not crash then
          begin
            writeln(' OUTPUT FROM TEST...6.4.3.5-2');
            writeln(' Empty records can be written to and read',
                    ' from local files');
            writeln(' IMPLEMENTATION DEFINED BEHAVIOUR...6.4.3.5-2',
                    ' (IMDEFB16)');
          end
        else
           writeln(' FAIL...6.4.3.5-2 (IMPDEFB16)')
end.


