{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.1-17, FILE=DEV167, CLASS=DEVIANCE, LEVEL=0                }
{                                                                    }
{:This test deviates because one of the expressions used in the      }
{:set-constructor is not compatible with the base-type of the set.   }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV167(output);
var
   sett : set of (red, blue, green);
begin
   sett:=[red, blue, 'z'];
   writeln(' DEVIATES...6.7.1-17 (DEV167)')
end.
