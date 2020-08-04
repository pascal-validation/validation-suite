{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.4-1, FILE=CONF215, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This program checks that a directive is not an identifier.         }
{                                                                    }
{ Modification History :                                             }
{   V5.2: New test suggested by Visible Software.                    }
{                                                                    }

program CONF215(output);

type
  direction = (backward,forward);
var
  t:direction;

procedure f; forward;

procedure f;
begin
  writeln(' PASS...6.1.4-1 (CONF215)');
end;

begin
  f;
  t:=forward
end.
