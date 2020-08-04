{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.5-10, FILE=ERR71T, CLASS=ERRORHANDLING, LEVEL=0,        }
{ NUMBER=51                                                          }
{                                                                    }
{:This test checks the type of error produced when the               }
{:case-statement does not contain a constant of the selected value.  }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Writes revised. Was previously 6.8.3.5-5.                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR71T(output);
var
   i:integer;
begin
   writeln(' ERROR...6.8.3.5-10 (ERR71T)');
   i:=0;
   case i of
   -3,3: writeln(' THIS LINE SHOULD NOT GET WRITTEN')
   end;
   writeln(' ERROR NOT DETECTED...6.8.3.5-10 (D.51)')
end.
