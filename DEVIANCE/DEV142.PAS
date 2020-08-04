{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.2-18, FILE=DEV142, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:This test deviates because only the first parameter of write is    }
{:permitted to be a file-variable.                                   }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.0: Second deviance moved to new test 6.6.5.2-23.              }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV142(output);
var
   f1 : text;
begin
   rewrite(f1);
   write(f1,f1);
   writeln(' DEVIATES...6.6.5.2-18 (DEV142)')
end.
