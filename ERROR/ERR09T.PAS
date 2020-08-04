{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.6-11, FILE=ERR09T, CLASS=ERRORHANDLING, LEVEL=0,          }
{ NUMBER=01                                                          }
{                                                                    }
{:This program violates array subscript assignment-compatibility     }
{:rules.                                                             }
{                                                                    }
{ Similar to 6.4.6-9.                                                }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment and writing revised. Was previously 6.4.6-6.       }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR09T(output);
type
   colour = (red,pink,orange,yellow,green);
var
   v     : colour;
   urray : array[red..orange] of boolean;
begin
   writeln(' ERROR...6.4.6-11 (ERR09T)');
   v:=orange;
   urray[succ(v)]:=true;      { error}
   writeln(' THE ORDINAL VALUE OF V IS ', ord(v));
   writeln(' ERROR NOT DETECTED...6.4.6-11 (D.01)')
end.
