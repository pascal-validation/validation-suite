{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.6.4-5, FILE=ERR56T, CLASS=ERRORHANDLING, LEVEL=0,         }
{ NUMBER=38                                                          }
{                                                                    }
{:This program causes an error to occur as the function succ is      }
{:applied to the last value of an ordinal-type.                      }
{                                                                    }
{ The error should be detected at run-time or earlier.               }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Assignment added and test changed.                         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR56T(output);
type
   enumerated = (first,second,third,last);
var
   ordinal : enumerated;
begin
   writeln(' ERROR...6.6.6.4-5 (ERR56T)');
   ordinal:= last;
   ordinal:=pred(succ(ordinal));
   writeln(' ERROR NOT DETECTED...6.6.6.4-5 (D.38)')
end.
