{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9.1-16, FILE=DEV242, CLASS=DEVIANCE, LEVEL=0                }
{                                                                    }
{:This test checks that an attempt to read an object of the wrong    }
{:type from a local file is rejected.                                }
{                                                                    }
{ Modification History :                                             }
{   V5.0: New test, suggested by Peter Robertson.                    }
{   V5.1: Program header changed from 'program p' to 'program t'.    }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV242(output);
var
  f : file of char;
  x : integer;
begin
  rewrite(f);
  write(f, '1', '2', '3');
  reset(f);
  read(f, x);
  writeln(' DEVIATES...6.9.1-16 (DEV242)');
end.
