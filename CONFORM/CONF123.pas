{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.3-2, FILE=CONF123, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This program tests that new and dispose operate as required.       }
{                                                                    }
{ However, after a call of dispose pointer should be undefined and   }
{ this is not tested.                                                }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment reworded - undefinition was bad English.           }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF123(output);
var
   ptr : ^integer;
   i   : integer;
begin
   for i:=1 to 10 do
   begin
      new(ptr);
      ptr^:=i;
      dispose(ptr)
   end;
   writeln(' PASS...6.6.5.3-2 (CONF123)')
end.
