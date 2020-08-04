{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9.1-11, FILE=DEV239, CLASS=DEVIANCE, LEVEL=0                }
{                                                                    }
{:This test deviates because only integer, real or character values  }
{:can be read from a textfile.                                       }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV239(output);
var
   one:boolean;
   f1 :text;
begin
   rewrite(f1);
   one := true;
   writeln(f1,one);
   reset(f1);
   read(f1,one);
   writeln(' DEVIATES...6.9.1-11 (DEV239)')
end.
