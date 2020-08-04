{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.2-4, FILE=DEV001, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This test checks that nil is implemented as a word-symbol, and not }
{:as an identifier.                                                  }
{                                                                    }
{ This is a common Pascal-P error.                                   }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment rewritten. Was previously 6.1.2-1.                 }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV001(output);
var
   i:(tick,cross,nil);
begin
   i:=nil;
   writeln(' DEVIATES...6.1.2-4 (DEV001)')
end.
