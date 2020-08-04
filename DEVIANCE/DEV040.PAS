{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.2.2-9, FILE=DEV040, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This test examines redefinition of function-identifiers.           }
{                                                                    }
{ It is possible to redefine a function-identifier within the scope  }
{ of a function-identifier. This test checks that the inner function }
{ redefines f, whether an erroneous assignment to f is detected or   }
{ whether the erroneous outer f, with no function assignment, is     }
{ allowed to execute.                                                }
{                                                                    }
{ Modification History :                                             }
{   V3.0: FAIL message altered to DEVIATES. Was previously 6.2.2-7.  }
{         .                                                          }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV040(output);
var
   bool:boolean;
   j:integer;
function f(i:integer) : integer;
   function f(i:integer) : integer;
   begin
      f:=i
   end;
begin
   if bool then
      writeln(' DEVIATES...6.2.2-9 (DEV040)')
      { Deviates if the call is recursive}
   else begin
      bool:=true;
      f:=f(i)
   end
end;
begin
   bool:=false;
   j:=f(1);
   if (j=1) then
      writeln(' DEVIATES...6.2.2-9 (DEV040)')
end.
