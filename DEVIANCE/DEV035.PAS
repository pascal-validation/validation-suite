{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.2.1-7, FILE=DEV035, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This test deviates since labels specified in a                     }
{:label-declaration-part must prefix statements within the           }
{:corresponding statement-part.                                      }
{                                                                    }
{ This program has the label attached to a statement within a        }
{ declared procedure of the corresponding block, and is therefore    }
{ incorrect.                                                         }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV035(output);
label 732;
procedure grimly(p:integer);
begin
732:
   p := p-1;
   if p > 0 then goto 732
end;
begin
   grimly(43);
   writeln(' DEVIATES...6.2.1-7 (DEV035)')
end.
