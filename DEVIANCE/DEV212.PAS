{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.5-7, FILE=DEV212, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test checks that subrange-like lists cannot be used as        }
{:case-constant elements.                                            }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Was previously 6.8.3.5-12.                                 }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV212(output);
var
   thing:(a,b,c,d,e,f);
begin
   thing:=a;
   while thing<>f do begin
      case thing of
      a..d: thing := succ(thing);
      e:    thing:=f
      end
   end;
   writeln(' DEVIATES...6.8.3.5-7 (DEV212)')
end.
