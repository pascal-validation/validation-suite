{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9.1-4, FILE=ERR79T, CLASS=ERRORHANDLING, LEVEL=0, NUMBER=54 }
{                                                                    }
{:This test checks that an error is produced when an attempt is made }
{:to read an integer but the sequence of characters on the input     }
{:file does not form a valid signed integer.                         }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Program parameter removed.                                 }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR79T(output);
var
   f:text;
   i:integer;
begin
   writeln(' ERROR...6.9.1-4 (ERR79T)');
   rewrite(f);
   writeln(f,'ABC123');
   reset(f);
   read(f,i);      {should cause an error}
   writeln(' ERROR NOT DETECTED...6.9.1-4 (D.54)')
end.
