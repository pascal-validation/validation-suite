{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.2.3-3, FILE=DEV200, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test checks that the number of actual parameters in a         }
{:procedure call is equal to the number of formal parameters in the  }
{:corresponding procedure-declaration.                               }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV200(output);
var
   aa, bb : integer;
procedure exchange (var a, b : integer);
var
   c : integer;
begin
   c:=a;
   a:=b;
   b:=c
end;
begin
   aa:=0; bb:=1;
   exchange(aa);
   writeln(' DEVIATES...6.8.2.3-3 (DEV200)')
end.
