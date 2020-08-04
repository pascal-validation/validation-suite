{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.2-8, FILE=DEV120, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This test checks that a function-body contains at least one        }
{:assignment to the function.                                        }
{                                                                    }
{ The Pascal Standard specifies that at least one assignment         }
{ statement which assigns a value to the function identifier must    }
{ occur in the function block.                                       }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Reclassified from ERRORHANDLING.                           }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV120(output);
var
   a : integer;
function illegal(var b : integer) : integer;
var
   x : integer;
begin
   x:=b*2
end;
begin
   a:=2;
   a:=illegal(a);
   writeln(' DEVIATES...6.6.2-8 (DEV120), NO FUNCTION ASSIGNMENT')
end.
