{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.2.2-12, FILE=DEV043, CLASS=DEVIANCE, LEVEL=0                }
{                                                                    }
{:This test deviates because the applied occurrence of type fred is  }
{:within the scope of the field-designator fred.                     }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV043(output);
type
   rec = record
            ptr : ^fred;
            fred : integer
         end;
   fred = rec;
begin
   writeln(' DEVIATES...6.2.2-12 (DEV043)')
end.
