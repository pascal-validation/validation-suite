{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.3-2, FILE=CONF109, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This test checks that any operation involving the formal-parameter }
{:is performed immediately on the actual parameter.                  }
{                                                                    }
{ Depending on how variable parameter passing is implemented, this   }
{ test may cause some processors to fail.                            }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Write for FAIL elaborated.                                 }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF109(output);
var
   direct : integer;
   pass  : boolean;
procedure indirection(var indirect : integer; var result : boolean);
   begin
      indirect:=2;
      if indirect<>direct then
         result:=false
      else
         result:=true
   end;

begin
   direct:=1;
   pass:=false;
   indirection(direct,pass);
   if pass then
      writeln(' PASS...6.6.3.3-2 (CONF109)')
   else
      writeln(' FAIL...6.6.3.3-2 (CONF109)')
end.
