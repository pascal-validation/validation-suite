{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.6.4-7, FILE=ERR58T, CLASS=ERRORHANDLING, LEVEL=0,         }
{ NUMBER=37                                                          }
{                                                                    }
{:This test evokes an error by pushing chr past the limits of the    }
{:char-type. It assumes that no char-type has more than 1000 +       }
{:ord('0') values.                                                   }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Plus sign inserted in comment.                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR58T(output);
var
   i:0..1000;
   c:char;
begin
   writeln(' ERROR...6.6.6.4-7 (ERR58T)');
   for i:=0 to 1000 do
      c:=chr(i+ord('0'));
   writeln(' ERROR NOT DETECTED...6.6.6.4-7 (D.37)')
end.
