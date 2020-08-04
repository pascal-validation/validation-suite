{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.6-6, FILE=DEV102, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:Structured-types containing a file component should not be         }
{:assigned to each other.                                            }
{                                                                    }
{ The Pascal Standard states that the two types T1 and T2 (in        }
{ determining assignment compatibility) must neither be a file-type  }
{ nor a structured-type with a file component. This program tests    }
{ the deviation of permitting the latter case.                       }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Program parameter removed.                                 }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV102(output);
type
   rekord = record
               f : text;
               a : integer
            end;
var
   record1 : rekord;
   record2 : rekord;
begin
   record1.a:=1;
   rewrite(record1.f);
   rewrite(record2.f);
   record2:=record1;
   writeln(' DEVIATES...6.4.6-6 (DEV102)')
end.
