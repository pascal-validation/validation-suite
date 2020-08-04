{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.10-15, FILE=DEV257, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This test checks that an attempt to read from the standard file    }
{:input is rejected when input is not a program parameter.           }
{                                                                    }
{ Modification History :                                             }
{   V5.0: New test.                                                  }
{   V5.1: Program header changed from 'program p' to 'program t'.    }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV257(output);
var
  int : integer;
begin
  writeln(' DEVIATES...6.10-15 (DEV257)');
  read(int);
end.
