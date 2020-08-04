{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.6-8, FILE=DEV104, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This program checks that an integer array cannot be assigned to a  }
{:real array although element by element assignment is valid.        }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV104(output);
var a: array [1 .. 1] of real;
    b: array [1 .. 1] of integer;
begin
b[1] := 1;
a[1] := b[1];
a := b;  { incorrect}
writeln(' DEVIATES...6.4.6-8 (DEV104)')
end.
