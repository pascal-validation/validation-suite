{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.2.2-11, FILE=ERR65T, CLASS=ERRORHANDLING, LEVEL=0,        }
{ NUMBER=46                                                          }
{                                                                    }
{:This program causes an error to occur as the second operand of the }
{:mod operator is 0.                                                 }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Writes revised. Was previously 6.7.2.2-8.                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR65T(output);
var
   i, j, k : integer;
begin
   writeln(' ERROR...6.7.2.2-11 (ERR65T)');
   i:=6;
   j:=0;
   k:=i mod j;       { an error as j=0}
   writeln(' ERROR NOT DETECTED...6.7.2.2-11 (D.46)')
end.
