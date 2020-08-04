{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.2-20, FILE=DEV144, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:This test deviates since a read-parameter-list which contains a    }
{:file-variable, must have a second parameter.                       }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV144(output);
var
   f : file of integer;
begin
   rewrite(f);
   write(f,10);
   reset(f);
   read(f);
   writeln(' DEVIATES...6.6.5.2-20 (DEV144)')
end.
