{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.3-19, FILE=DEV076, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:Subrange-types cannot be used as tag-types in a record.            }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test from BNI.                                         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV076(output);
type
    rec=record
           case tag:1..2 of
              1:(i:integer);
              2:(c:char);
           end;
begin
    writeln(' DEVIATES...6.4.3.3-19 (DEV076)')
end.
