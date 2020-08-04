{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.2.1-13, FILE=IMDEFB09,                                      }
{ CLASS=IMPLEMENTATIONDEFINEDBEHAVIOUR, LEVEL=0                      }
{                                                                    }
{:This test checks that a large number of labels (50) may be         }
{:declared in a program.                                             }
{                                                                    }
{ It is an attempt to detect a small processor limit on the number   }
{ of labels. NOTE: A goto-statement whose label is attached to the   }
{ immediately next statement is correct Pascal, and hence this       }
{ program should be acceptable to a Standard Pascal processor.  The  }
{ provision of warnings of this unusual situation is satisfactory,   }
{ but rejecting the program is not.                                  }
{                                                                    }
{ Modification History :                                             }
{   V3.0: A note added to indicate that null gotos are correct       }
{         Pascal. Program modified to actually use all labels. Was   }
{         previously 6.2.1-9.                                        }
{   V4.2: Short-form message included in output.                     }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program IMDEFB09(output);
label
   1,2,3,4,5,6,7,8,9,10,
   11,12,13,14,15,16,17,18,19,20,
   21,22,23,24,25,26,27,28,29,30,
   31,32,33,34,35,36,37,38,39,40,
   41,42,43,44,45,46,47,48,49,50;
begin
   goto 1;
   1:  goto 2;
   2:  goto 3;
   3:  goto 4;
   4:  goto 5;
   5:  goto 6;
   6:  goto 7;
   7:  goto 8;
   8:  goto 9;
   9:  goto 10;
   10: goto 11;
   11: goto 12;
   12: goto 13;
   13: goto 14;
   14: goto 15;
   15: goto 16;
   16: goto 17;
   17: goto 18;
   18: goto 19;
   19: goto 20;
   20: goto 21;
   21: goto 22;
   22: goto 23;
   23: goto 24;
   24: goto 25;
   25: goto 26;
   26: goto 27;
   27: goto 28;
   28: goto 29;
   29: goto 30;
   30: goto 31;
   31: goto 32;
   32: goto 33;
   33: goto 34;
   34: goto 35;
   35: goto 36;
   36: goto 37;
   37: goto 38;
   38: goto 39;
   39: goto 40;
   40: goto 41;
   41: goto 42;
   42: goto 43;
   43: goto 44;
   44: goto 45;
   45: goto 46;
   46: goto 47;
   47: goto 48;
   48: goto 49;
   49: goto 50;
   50: writeln(' OUTPUT FROM TEST...6.2.1-13 (IMDEFB09)');
   writeln(' At least 50 labels may be declared in a program');
   writeln(' IMPLEMENTATION DEFINED BEHAVIOUR...6.2.1-13 (IMDEFB09)')
end.
