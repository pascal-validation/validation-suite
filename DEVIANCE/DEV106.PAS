{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.5.3.2-8, FILE=DEV106, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test contains an expression of the form A(.I.) where A is not }
{:an array-type.                                                     }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV106(output);
var
   rec : record
             j : integer;
             k : char
          end;
begin
   rec.j := 10;
   rec[j] := 11;
   writeln(' DEVIATES...6.5.3.2-8 (DEV106)')
end.
