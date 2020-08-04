{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.6-9, FILE=ERR07T, CLASS=ERRORHANDLING, LEVEL=0, NUMBER=49 }
{                                                                    }
{:This test violates the assignment-compatibility rules for          }
{:ordinal-types.                                                     }
{                                                                    }
{ The Pascal Standard says that if the two types in an assignment    }
{ compatibility test (T1 and T2) are compatible ordinal types and    }
{ the value of the expression E which is of type T2 is not in the    }
{ closed interval specified by the type T1, an error occurs.         }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment and writing revised. Was previously 6.4.6-4.       }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR07T(output);
type
   subrange = 0..5;
var
   i : subrange;
begin
   writeln(' ERROR...6.4.6-9 (ERR07T)');
   i:=5;
   i:=i*2;    { error}
   writeln(' THE VALUE OF I IS ', i);
   writeln(' ERROR NOT DETECTED...6.4.6-9 (D.49)')
end.
