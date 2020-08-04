{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9.3.1-2, FILE=ERR83T, CLASS=ERRORHANDLING, LEVEL=0,         }
{ NUMBER=58                                                          }
{                                                                    }
{:This test attempts to output characters whose field width          }
{:parameters are non-positive.                                       }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Was 6.9.3.2-3, rewrite added, character output.            }
{   V4.3: Write changed to Writeln line 14.                          }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR83T(output);
var
   f:text;
   i:integer;
begin
   writeln(' ERROR...6.9.3.1-2 (ERR83T)');
   rewrite (f);
   for i:=10 downto -1 do
      writeln(f,' ','.':i, 'REP=',i);
   writeln(' ERROR NOT DETECTED...6.9.3.1-2 (D.58)')
end.
