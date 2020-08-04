{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.2.4-4, FILE=ERR70T, CLASS=ERRORHANDLING, LEVEL=0,         }
{ NUMBER=50                                                          }
{                                                                    }
{:This test checks that operations on overlapping sets are detected. }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Writes revised. Was previously 6.7.2.4-1.                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR70T(output);
var
   a,d : set of 0..10;
   b,c : set of 5..15;
begin
   writeln(' ERROR...6.7.2.4-4 (ERR70T)');
   b:=[5,10];
   a:=[0,5,10];
   d:=a+b;   {ok}
   b:=[5,10,15];
   c:=a+b;   {should be an error}
   writeln(' ERROR NOT DETECTED...6.7.2.4-4 (D.50)')
end.
