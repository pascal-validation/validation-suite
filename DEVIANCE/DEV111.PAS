{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.1-3, FILE=DEV111, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This program checks that a procedure call is not incorrectly bound }
{:to the wrong defining occurrence.                                  }
{                                                                    }
{ Since applied occurrence is before the defining occurrence (in     }
{ qq), the program deviates.  Simple processors are likely to fail   }
{ it.                                                                }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV111(output);
procedure p;
     begin
     writeln(' OUTER PROCEDURE')
     end;
procedure q;
     procedure qq;
          begin
          p
          end;
     procedure p;
          begin
          writeln(' INNER PROCEDURE')
          end;
     begin
     qq
     end;
begin
q;
writeln(' DEVIATES...6.6.1-3 (DEV111)')
end.
