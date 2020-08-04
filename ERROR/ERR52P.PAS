{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.6.6.2-13, FILE=ERR52P, CLASS=ERRORHANDLING, LEVEL=0,     }
{ NUMBER=32                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR52P(output);
var
   x, last: integer;
begin
   x := 2;  last := 4;
   while (x < maxint) and (last > x) do
      begin
      last := x;
      x := sqr(x);
      end;
   if (last*last <> x) or (x < last) then
      begin
      writeln(' UNEXPECTED RESULT')
      end
   else
      begin
      writeln(' PRETEST...6.6.6.2-13 (ERR52P)');
      writeln(' EXPECTED RESULT')
      end;
end.
