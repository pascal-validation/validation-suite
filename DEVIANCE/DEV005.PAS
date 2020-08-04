{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.2-8, FILE=DEV005, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This test deviates by regarding the .. token as equivalent to the  }
{:colon token.                                                       }
{                                                                    }
{ Some processors with a small limit on set size (such as 48         }
{ elements) economize on tokens by regarding the .. token as         }
{ synonymous with the : token.  This allows some incorrect programs  }
{ to run. This bug has proliferated from Pascal-P.                   }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Comment changed.                                           }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV005(output);
var
   i .. integer;
   j: 1 : 2;
begin
   j := 1;
   i := j+5;
   writeln(' DEVIATES...6.1.2-8 (DEV005)')
end.
