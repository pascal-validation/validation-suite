{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.5.3.3-2, FILE=DEV108, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test checks that reference to a record with a missing         }
{:field-specifier is rejected.                                       }
{                                                                    }
{ Modification History :                                             }
{   V5.0: New test, suggested by Peter Robertson.                    }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV108(output);
type
  rec = record
          one, two : integer
        end;
var
  group, collection : rec;
begin
  group.one := 1;
  group.two := 12;
  collection.one := group. {no field};
  writeln(' DEVIATES...6.5.3.3-2 (DEV108)');
end.
