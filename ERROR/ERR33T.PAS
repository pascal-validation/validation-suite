{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.3-7, FILE=ERR33T, CLASS=ERRORHANDLING, LEVEL=0,         }
{ NUMBER=05                                                          }
{                                                                    }
{:This program causes an error to occur as a variable which is an    }
{:element of the record-variable-list of a with-statement is         }
{:referred to by the pointer parameter of dispose.                   }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Writes revised. Was previously 6.6.5.3-6.                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR33T(output);
type
   subrange = 0..9999;
   rekord   = record
               name : packed array[1..15] of char;
               employeeno : subrange
              end;
var
   ptr : ^rekord;
begin
   writeln(' ERROR...6.6.5.3-7 (ERR33T)');
   new(ptr);
   with ptr^ do
   begin
      name:='HARRY M. MULLER';
      employeeno:=9998;
      dispose(ptr)
   end;
   writeln(' ERROR NOT DETECTED...6.6.5.3-7 (D.05)')
end.
