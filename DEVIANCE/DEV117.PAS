{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.1-10, FILE=DEV117, CLASS=DEVIANCE, LEVEL=0                }
{                                                                    }
{:This test deviates since a procedure-identification may not be     }
{:followed by the forward directive.                                 }
{                                                                    }
{ If the same procedure-identifier appears in two                    }
{ procedure-declarations and these procedure-declarations are at the }
{ same level of nesting, then exactly one of these                   }
{ procedure-declarations must contain the forward directive this     }
{ being the first one.                                               }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV117(output);
var
   dummy : integer;
procedure pp; forward;
procedure pp; forward;
procedure pp;
begin
   dummy:=1
end;
begin
   pp;
   writeln(' DEVIATES...6.6.1-10 (DEV117)')
end.
