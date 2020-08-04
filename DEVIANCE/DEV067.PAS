{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.1-4, FILE=DEV067, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:The syntax of Pascal forbids use of a structured-type identifier   }
{:in a packed type definition.                                       }
{                                                                    }
{ Modification History :                                             }
{   V4.0: Integer declarations corrected.                            }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV067(output);
type
   complex = record
               realpart : integer;
               imagpart : integer
             end;
   packcom = packed complex;
begin
   writeln(' DEVIATES...6.4.3.1-4 (DEV067)')
end.
