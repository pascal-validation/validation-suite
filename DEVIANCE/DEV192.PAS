{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.1-3, FILE=DEV192, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This program attempts to jump from a procedure to the middle of a  }
{:compound-statement.                                                }
{                                                                    }
{ In case a non-local goto into a for-statement is treated as a      }
{ special case, this test exibits the most innocouous deviation: a   }
{ label which is not at the outermost statement-sequence of a block, }
{ but nested one compound-statement in.                              }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test, replaces 6.8.2.4-4.                              }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV192(output);
label 8765;
procedure exit;
   begin
      goto 8765
   end;
begin
   begin
       exit;
8765:  writeln(' DEVIATES...6.8.1-3 (DEV192)')
   end
end.
