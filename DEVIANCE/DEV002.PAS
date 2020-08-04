{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.2-5, FILE=DEV002, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This test checks that word-symbols cannot be redefined by          }
{:attempting to redefine a small selection.                          }
{                                                                    }
{ Typically the attempt provokes such anguishing error recovery      }
{ attempts that testing every reserved word has not been done.       }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment changed and test extended in. Was previously       }
{         6.1.2-2.                                                   }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV002(output);
var
   thing:(to,var,label,of);
begin
   thing:=label;
   writeln(' DEVIATES...6.1.2-5 (DEV002)')
end.
