{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.5.5-3, FILE=ERR16T, CLASS=ERRORHANDLING, LEVEL=0, NUMBER=06 }
{                                                                    }
{:This test causes an error by altering the value of a file-variable }
{:when a reference to the buffer-variable exists.                    }
{                                                                    }
{ This test is similar to 6.5.5-2, except that the buffer variable   }
{ is an element of the record variable list of a with statement. The }
{ error should be detected by the processor.                         }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Comment changed.                                           }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR16T(output);
type
   sex   = (male,female,notgiven);
   socialsecuritynumber = 0..10000;
   rekord = record
               a : socialsecuritynumber;
               b : sex
            end;
var
   fyle : file of rekord;
begin
   writeln(' ERROR...6.5.5-3 (ERR16T)');
   rewrite(fyle);
   with fyle^ do
   begin
      a:=9999;
      b:=notgiven;
      put(fyle)
   end;
   writeln(' ERROR NOT DETECTED...6.5.5-3 (D.06)')
end.
