{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.5-11, FILE=ERR72T, CLASS=ERRORHANDLING, LEVEL=0,        }
{ NUMBER=51                                                          }
{                                                                    }
{:This test is in error since the case-statement is given without a  }
{:case-constant of the selected value.                               }
{                                                                    }
{ This time the value is a long way outside the case. An error       }
{ should  be produced at execution time.                             }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Writes revised. Was previously 6.8.3.5-6.                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR72T(output);
var
   i:integer;
begin
   writeln(' ERROR...6.8.3.5-11 (ERR72T)');
   i:=1000;
   case i of
   -3,3: writeln(' THIS LINE SHOULD NOT GET WRITTEN')
   end;
   writeln(' ERROR NOT DETECTED...6.8.3.5-11 (D.51)')
end.
