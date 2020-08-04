{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.5.4-3, FILE=DEV109, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This test attempts to dereference a variable which is not of       }
{:pointer-type.                                                      }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV109(output);
var
   i : integer;
begin
   i^ := 1;
   writeln(' DEVIATES...6.5.4-3 (DEV109)')
end.
