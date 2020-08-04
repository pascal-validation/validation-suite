{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.4-2, FILE=DEV087, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This test deviates since the domain-type of the pointer-type is    }
{:not declared.                                                      }
{                                                                    }
{ Modification History :                                             }
{   V4.0: Test made more stringent by removing the two uses of       }
{         pointer2.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV087(output);
var
   pointer1 : ^integer;
   pointer2 : ^rekord;
begin
   new(pointer1);
   pointer1:=nil;
   writeln(' DEVIATES...6.4.4-2 (DEV087)')
end.
