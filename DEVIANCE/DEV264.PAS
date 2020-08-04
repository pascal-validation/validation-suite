{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.2.2.8-1, FILE=DEV264, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test checks that redeclaration in the same scope is rejected. }
{                                                                    }
{ Modification History :                                             }
{   V5.2: new test suggested by Jacques Farre                        }
{                                                                    }

program DEV264(output);

type
  q=^integer;
var
  v:q;

procedure integer;

begin
  new(v);
  v^:=0;
end;
begin
  integer;
  writeln(' DEVIATES...6.2.2.8-1 (DEV264)');
end.

