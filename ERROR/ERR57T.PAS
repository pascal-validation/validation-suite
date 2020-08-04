{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.6.4-6, FILE=ERR57T, CLASS=ERRORHANDLING, LEVEL=0,         }
{ NUMBER=39                                                          }
{                                                                    }
{:This program causes an error to occur as the function pred is      }
{:applied to the first value of an ordinal-type.                     }
{                                                                    }
{ The error should be detected at run-time or earlier.               }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Test altered.                                              }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR57T(output);
type
   enumerated = (first,second,third,fourth,last);
var
   ordinal : enumerated;
begin
   writeln(' ERROR...6.6.6.4-6 (ERR57T)');
   ordinal:=first;
   if pred(ordinal) < first then ;
   writeln(' ERROR NOT DETECTED...6.6.6.4-6 (D.39)')
end.
