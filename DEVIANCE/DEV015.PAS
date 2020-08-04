{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.6-5, FILE=DEV015, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:Labels whose integral values lie outside the range 0..9999 should  }
{:be rejected.                                                       }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV015(output);
label 10000, 9999, 999, 99, 9;
begin
goto 10000;
9: goto 9999;
99: goto 999;
999: goto 9;
10000: goto 99;
9999: writeln(' DEVIATES...6.1.6-5 (DEV015)')
end.
