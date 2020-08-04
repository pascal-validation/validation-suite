{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.2.2.8-2, FILE=DEV265, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This tests checks scope.                                           }
{                                                                    }
{ Modification History :                                             }
{   V5.2: new test suggested by Jacques Farre                        }
{                                                                    }

program DEV265(output);

procedure p;

var
  v:integer;
begin
  v:=0;
end;

procedure integer;
begin
  p
end;

begin
  integer;
  writeln(' DEVIATES...6.2.2.8-2 (DEV265)')
end.

