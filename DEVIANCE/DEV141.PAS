{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.6-10, FILE=DEV141, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:This test violates the parameter list congruity rules.             }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV141(output);
var
   aa,bb : integer;
procedure p(procedure formal(var a,b : integer));
   begin
   formal(aa,bb)
   end;
procedure actual(var a : integer; var b : integer);
   begin
   writeln(' DEVIATES...6.6.3.6-10 (DEV141)')
   end;
begin
   p(actual)
end.
