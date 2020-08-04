{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.2.4-2, FILE=DEV206, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test checks that use of an expression in a goto statement is  }
{:rejected.                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.0: New test.                                                  }
{   V5.1: Program header changed from 'program p' to 'program t'.    }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV206(output);
label 6;
var
  int : integer;
begin
  int := 2;
  goto 3*int;
6: writeln(' DEVIATES...6.8.2.4-2 (DEV206)');
end.
