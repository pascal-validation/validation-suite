{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.10-10, FILE=DEV237, CLASS=DEVIANCE, LEVEL=0             }
{                                                                    }
{:This test deviates since the variable occurring in the             }
{:record-variable-list of a with-statement must possess a            }
{:record-type.                                                       }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV237(output);
var
   i : record
          j : integer;
          k : char
       end;
begin
   i.j := 1;
   with i.j do;
   writeln(' DEVIATES...6.8.3.10-10 (DEV237)')
end.
