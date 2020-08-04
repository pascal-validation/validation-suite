{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.2.2-13, FILE=ERR67T, CLASS=ERRORHANDLING, LEVEL=0,        }
{ NUMBER=46                                                          }
{                                                                    }
{:This program incorporates the error of j being negative in the     }
{:expression i mod j.                                                }
{                                                                    }
{ Modification History :                                             }
{   V4.0: Test altered to check mod rather than div.                 }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR67T(output);
var
   i, j, l : integer;
begin
   writeln(' ERROR...6.7.2.2-13 (ERR67T)');
   for i := -10 to 10 do
      for j := 2 downto -2 do
         if j <> 0 then
            l := i mod j;
   writeln(' ERROR NOT DETECTED...6.7.2.2-13 (D.46)')
end.
