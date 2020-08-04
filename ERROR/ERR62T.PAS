{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.2.2-8, FILE=ERR62T, CLASS=ERRORHANDLING, LEVEL=0,         }
{ NUMBER=45                                                          }
{                                                                    }
{:This program causes an error to occur as the second operand of the }
{:div operator is 0.                                                 }
{                                                                    }
{ The error should be detected at run-time.                          }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Writes revised. Was previously 6.7.2.2-3.                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR62T(output);
var
   i, j, k : integer;
begin
   writeln(' ERROR...6.7.2.2-8 (ERR62T)');
   i:=6;
   j:=0;
   k:=i div j;       { an error as j=0}
   writeln(' THE VALUE OF K IS ',k);
   writeln(' ERROR NOT DETECTED...6.7.2.2-8 (D.45)')
end.
