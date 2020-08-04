{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.6-4, FILE=DEV100, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This test deviates since assignment of reals to integers is not    }
{:permitted.                                                         }
{                                                                    }
{ The Pascal Standard allows assignment of integers to reals, but    }
{ not reals to integers.                                             }
{                                                                    }
{ Modification History :                                             }
{   V4.0: Test made more stringent by changing 6.345 to 6.0.         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV100(output);
var
   i : real;
   j : integer;
procedure test(a:integer);
begin
end;
begin
   i:=6.0;
   j:=i;
   test(6.0);
   writeln(' DEVIATES...6.4.6-4 (DEV100)')
end.
