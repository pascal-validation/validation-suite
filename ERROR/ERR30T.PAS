{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.3-4, FILE=ERR30T, CLASS=ERRORHANDLING, LEVEL=0,         }
{ NUMBER=23                                                          }
{                                                                    }
{:This program causes an error to occur as the pointer parameter of  }
{:dispose is nil.                                                    }
{                                                                    }
{ The error should be detected at run-time or earlier.               }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Writes revised. Was previously 6.6.5.3-3.                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR30T(output);
type
   rekord = record
            a : integer;
            b : boolean
           end;
var
   ptr : ^rekord;
begin
   writeln(' ERROR...6.6.5.3-4 (ERR30T)');
   ptr:=nil;
   dispose(ptr);
   writeln(' ERROR NOT DETECTED...6.6.5.3-4 (D.23)')
end.
