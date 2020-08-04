{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.2.3-1, FILE=DEV199, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test deviates since a function cannot be called as a          }
{:statement.                                                         }
{                                                                    }
{ Algol 60 permits this.                                             }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV199(output);
function f: integer;
   begin
   f := 10
   end;
begin
   f;
   writeln(' DEVIATES...6.8.2.3-1 (DEV199)')
end.
