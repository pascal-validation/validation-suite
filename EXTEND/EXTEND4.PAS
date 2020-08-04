{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.5-16, FILE=EXTEND4, CLASS=EXTENSION, LEVEL=0            }
{                                                                    }
{:This test checks whether an otherwise clause in a case-statement   }
{:is accepted.                                                       }
{                                                                    }
{ The convention is that adopted at the UCSD Pascal workshop in July }
{ 1978. The extension is accepted if the program prints PASS.        }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Value check made more complete. Variable 'counter' not     }
{         needed. Was previously 6.8.3.5-14.                         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program EXTEND4(output);
var
   i,j,k:integer;
begin
   j:=0; k:=0;
   for i:=0 to 10 do
      case i of
      1,3,5,7,9:
         j:=j+1
      otherwise
         k:=k+1
      end;
   if (j=5) and (k=6) then
      writeln(' EXTEND...6.8.3.5-16 (EXTEND4), Otherwise')
   else
      writeln(' EXTEND...6.8.3.5-16 (EXTEND4), Unexpected behaviour')
end.
