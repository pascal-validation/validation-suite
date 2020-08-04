{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.9-13, FILE=DEV228, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:This test checks whether a for-statement control-variable can be   }
{:an identified-variable.                                            }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Comment changed.                                           }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV228(output);
type
   int = ^integer;
var
   ptr:int;
   j:integer;
begin
   j:=0;
   new(ptr);
   for ptr^ := 0 to 10 do
      j:=j+1;
   writeln(' DEVIATES...6.8.3.9-13 (DEV228)')
end.
