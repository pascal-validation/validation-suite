{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.9-8, FILE=ERR73T, CLASS=ERRORHANDLING, LEVEL=0,         }
{ NUMBER=52                                                          }
{                                                                    }
{:This test causes an error since the initial-value of the           }
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

program ERR73T(output);
type
   colour = (red,blue,green,yellow);
   subcolour = blue..yellow;
var
   col1 : colour;
   col2 : subcolour;
   i : integer;
begin
   writeln(' ERROR...6.8.3.9-8 (ERR73T)');
   i := 0;
   col1 := blue;
   for col2 := pred(col1) to yellow do
      i := succ(i);
   writeln(' ERROR NOT DETECTED...6.8.3.9-8 (D.52)')
end.
