{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.3-5, FILE=ERR31T, CLASS=ERRORHANDLING, LEVEL=0,         }
{ NUMBER=24                                                          }
{                                                                    }
{:In this test an error is caused by the pointer variable of dispose }
{:being undefined.                                                   }
{                                                                    }
{ The error should be detected at run-time or earlier.               }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Writes revised. Was previously 6.6.5.3-4.                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR31T(output);
type
   rekord = record
             a : integer;
             b : boolean
            end;
var
   ptr : ^rekord;
begin
   writeln(' ERROR...6.6.5.3-5 (ERR31T)');
   dispose(ptr);
   writeln(' ERROR NOT DETECTED...6.6.5.3-5 (D.24)')
end.
