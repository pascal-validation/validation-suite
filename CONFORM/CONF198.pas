{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9.3-1, FILE=CONF198, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This test checks that a write that does not specify the file       }
{:always writes on the default file at the program level, not any    }
{:local variable with the same identifier.                           }
{                                                                    }
{ The processor fails if the program does not print PASS.            }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment extended and writes revised. Was previously        }
{         6.9.4-15.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF198(output);
   procedure p;
   var
      output:text;
   begin
      rewrite(output);
      writeln(' PASS...6.9.3-1 (CONF198)')
   end;
begin
   p
end.
