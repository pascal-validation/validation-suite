{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.9-9, FILE=ERR74T, CLASS=ERRORHANDLING, LEVEL=0,         }
{ NUMBER=53                                                          }
{                                                                    }
{:This test causes an error since the final-value of the             }
{:for-statement violates the assignment-compatibility rules.         }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR74T(output);
type
   subrange = 1..4;
var
   sub : subrange;
   i,j : integer;
begin
   writeln(' ERROR...6.8.3.9-9 (ERR74T)');
   j := 0;
   i := 3;
   for sub := 1 to i*i do
      j := succ(j);
   writeln(' ERROR NOT DETECTED...6.8.3.9-9 (D.53)')
end.
