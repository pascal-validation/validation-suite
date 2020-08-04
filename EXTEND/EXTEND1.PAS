{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.3-4, FILE=EXTEND1, CLASS=EXTENSION, LEVEL=0               }
{                                                                    }
{:This test checks if underscores are permitted in identifiers, and  }
{:if they are significant.                                           }
{                                                                    }
{ This test uses nested scopes to see if the underscores are         }
{ significant, as in 6.1.3-3.                                        }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test based upon a common extension.                    }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program EXTEND1(output);
const
   t1 = 1;
var
   sign: boolean;
procedure signif;
   const
      t_1 = 2;
   begin
      sign := t1 = 1;
   end;
begin
   signif;
   if sign then
      writeln(' EXTEND...6.1.3-4 (EXTEND1), UNDERSCORE IS SIGNIFICANT')
   else
      writeln(' EXTEND...6.1.3-4 (EXTEND1), UNDERSCORE NOT SIGNIFICANT')
end.
