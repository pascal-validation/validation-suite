{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.6.6.2-12, FILE=ERR51P, CLASS=ERRORHANDLING, LEVEL=0,     }
{ NUMBER=32                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR51P(output);
var
   x: real;
begin
   x := 2.0;
   while x > sqr(x) do
      x := sqr(x);
   if x <> sqr(x) then
      begin
      writeln(' PRETEST...6.6.6.2-12 (ERR51P)');
      writeln(' EXPECTED RESULT')
      end
   else
      begin
      writeln(' PRETEST...6.6.6.2-12 (ERR51P)');
      writeln(' UNEXPECTED RESULT')
      end;
end.
