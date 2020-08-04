{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.1-9, FILE=DEV116, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This test checks that a formal-parameter-list is not allowed in an }
{:identification of a forward function.                              }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV116(output);
var
   x: boolean;
function alwaystrue (b:boolean) : boolean; forward;
function alwaystrue (b:boolean) : boolean;
begin
   alwaystrue:=true
end;
begin
   x:=alwaystrue(false);
   writeln(' DEVIATES...6.6.1-9 (DEV116)')
end.
