{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.5.4-4, FILE=DEV110, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This test deviates because a function-identifier cannot be used as }
{:a pointer-variable.                                                }
{                                                                    }
{ Some compilers may take a short-cut and treat a                    }
{ function-identifier as a local variable when it appears on the     }
{ left-hand side of an assignment.                                   }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV110(output);
type
   ptr = ^integer;
var
   p : ptr;
function f : ptr;
   var
      p : ptr;
   begin
   new(p);
   f := p;
   f^ := 10
   end;
begin
   writeln(' DEVIATES...6.5.4-4 (DEV110)')
end.
