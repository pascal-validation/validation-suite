{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.5.5-2, FILE=ERR15T, CLASS=ERRORHANDLING, LEVEL=0, NUMBER=06 }
{                                                                    }
{:This program causes an error to occur by changing the current file }
{:position of a file, while the buffer-variable is an actual         }
{:variable parameter to a procedure.                                 }
{                                                                    }
{ The error should be detected by the processor.                     }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Comment changed.                                           }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR15T(output);
var
   fyle : text;
procedure naughty(var f : char);
   begin
      if f='G' then
         put(fyle)
   end;
begin
   writeln(' ERROR...6.5.5-2 (ERR15T)');
   rewrite(fyle);
   fyle^:='G';
   naughty(fyle^);
   writeln(' ERROR NOT DETECTED...6.5.5-2 (D.06)')
end.
