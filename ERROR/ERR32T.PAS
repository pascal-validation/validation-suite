{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.3-6, FILE=ERR32T, CLASS=ERRORHANDLING, LEVEL=0,         }
{ NUMBER=05                                                          }
{                                                                    }
{:This program causes an error to occur as a variable which is       }
{:currently an actual variable parameter is referred to by the       }
{:pointer parameter of dispose.                                      }
{                                                                    }
{ The error should be detected at run-time or earlier.               }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Writes revised. Procedure heading corrected by inserting   }
{         'var'. Was previously 6.6.5.3-5.                           }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR32T(output);
var
   ptr : ^integer;
procedure error(var a:integer);
   var
      x : integer;
   begin
      x:=a*2;
      dispose(ptr)
   end;
begin
   writeln(' ERROR...6.6.5.3-6 (ERR32T)');
   new(ptr);
   ptr^:=6;
   error(ptr^);
   writeln(' ERROR NOT DETECTED...6.6.5.3-6 (D.05)')
end.
