{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.2-2, FILE=DEV128, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:The assignment compatibility rules prohibit a type with a file     }
{:component being used as a value parameter.                         }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV128(output);
procedure p( x: text);
   begin
   writeln(x, ' DEVIATES...6.6.3.2-2 (DEV128)')
   end;
begin
   p(output)
end.
