{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.2-23, FILE=DEV146, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:This test deviates because only the first parameter of read is     }
{:permitted to be a file-variable.                                   }
{                                                                    }
{ Modification History :                                             }
{   V5.0: New test, second deviance from 6.6.5.2-18.                 }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV146(output);
var
   f1 : text;
begin
   rewrite(f1);
   writeln(f1,'some text');
   reset(f1);
   read(f1,f1);
   writeln(' DEVIATES...6.6.5.2-23 (DEV146)')
end.
