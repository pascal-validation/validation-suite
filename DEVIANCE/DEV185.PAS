{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.2.5-8, FILE=DEV185, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:Only '=' and '<>' operators are permitted in a relational          }
{:expression that contains pointer operands.                         }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV185(output);
type
   listpointer   = ^listcomponent;
   listcomponent = record
                      i : integer;
                      next : listpointer
                   end;
var
   p1, p2 : listpointer;
   bigger : boolean;
begin
   p1:=nil; p2:=nil;
   if p1 >= p2 then
      bigger:=true
   else
      bigger:=false;
   writeln(' DEVIATES...6.7.2.5-8 (DEV185)')
end.
