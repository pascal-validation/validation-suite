{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.2.2-4, FILE=DEV198, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test deviates by declaring a procedure with a                 }
{:functional-parameter and the body of the procedure contains an     }
{:assignment to the function-identifier.                             }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV198(output);
function ff : boolean;
begin
   ff:=true
end;
procedure pp (function anyf : boolean);
begin
   anyf:=true
end;
begin
   pp(ff);
   writeln(' DEVIATES...6.8.2.2-4 (DEV198)')
end.
