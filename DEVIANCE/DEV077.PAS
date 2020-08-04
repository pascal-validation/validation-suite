{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.3-20, FILE=DEV077, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:Enumerated-types cannot be used as tag-types in a record.          }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test from BNI.                                         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV077(output);
type
    rec=record
           case tag:(a,b) of
              a:(i:integer);
              b:(c:character);
        end;
begin
    writeln(' DEVIATES...6.4.3.3-20 (DEV077)')
end.
