{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.10-8, FILE=DEV256, CLASS=DEVIANCE, LEVEL=0                  }
{                                                                    }
{:This test deviates because the program-parameter F has been        }
{:subsequently declared as a function F.                             }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V4.2: Test moved.                                                }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV256(f, output);
function f:boolean;
   begin
   f := true
   end;
begin
   writeln(' DEVIATES...6.10-8 (DEV256)')
end.
