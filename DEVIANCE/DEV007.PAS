{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.2-10, FILE=DEV007, CLASS=DEVIANCE, LEVEL=0                }
{                                                                    }
{:This test deviates since the character | is not a token of Pascal. }
{                                                                    }
{ This test is not  relevant to processors that do not admit the |   }
{ character in their character set.                                  }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Test moved.                                                }
{   V4.2: Test moved.                                                }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV007(output);
var
   i:integer;
begin
   i:=77;
   if (i<35) | (i>56) then i:=0;
   writeln(' DEVIATES...6.1.2-10 (DEV007)')
end.
