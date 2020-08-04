{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.2.3-5, FILE=DEV175, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test contains an extension of Boolean operators which is      }
{:permitted in Ada but not in Pascal.                                }
{                                                                    }
{ The 'and then' and 'or else' constructs in Ada are added to        }
{ provide a mechanism which avoids the complete evaluation of a      }
{ boolean expression.                                                }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV175(output);
var
   b: boolean;
begin
   b := (1 > 2) and then (3 = 4);
   b := b or else ('a' = 'b');
   writeln(' DEVIATES...6.7.2.3-5 (DEV175)')
end.
