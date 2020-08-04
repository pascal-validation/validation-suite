{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.2.2-13, FILE=DEV044, CLASS=DEVIANCE, LEVEL=0                }
{                                                                    }
{:This program checks the scope rules for procedure parameters.      }
{                                                                    }
{ Modification History :                                             }
{   V4.3: New Test                                                   }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV044(output);
{Suggested by Michael Oudshoorn, University of Adelaide}
type
   a = char;
   b = boolean;
procedure x2(c: a; a: b);
   begin
   end;
begin
writeln(' DEVIATES...6.2.2-13 (DEV044)')
end.
