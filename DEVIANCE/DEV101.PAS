{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.6-5, FILE=DEV101, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:Files should not be assigned to each other.                        }
{                                                                    }
{ The Pascal Standard states that the two types T1 and T2 (in        }
{ determining assignment compatibility) must neither be a a          }
{ file-type nor a structured-type with a file component. This        }
{ program tests the first part of this statement.                    }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Program parameters removed.                                }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV101(output);
var
   file1 : text;
   file2 : text;
begin
   rewrite(file1);
   rewrite(file2);
   writeln(file1,'ABC');
   file2:=file1;
   writeln(' DEVIATES...6.4.6-5 (DEV101)')
end.
