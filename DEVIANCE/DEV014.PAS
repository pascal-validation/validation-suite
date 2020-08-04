{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.6-4, FILE=DEV014, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This program checks that a processor does not implement the        }
{:'const' facility as a simple textual macro.                        }
{                                                                    }
{ The program illustrates one  of the cases where syntactic          }
{ knowledge is then required to reject incorrect programs.           }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV014(output);
label
   5,6,7;
const
   five=5; six=6; seven=7;
begin
      goto five;
six:  goto 7;
5:    goto 6;
7:    writeln(' DEVIATES...6.1.6-4 (DEV014)')
end.
