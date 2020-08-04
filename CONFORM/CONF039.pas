{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.2.2-5, FILE=CONF039, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This test checks the ordering of the upper-case letters A-Z.       }
{                                                                    }
{ The Pascal Standard states that the upper-case letters A-Z are     }
{ ordered, but not necessarily contiguous. This program determines   }
{ if this is so, and prints a message as to whether the processor    }
{ passes or not. The test is not relevant to processors that do not  }
{ implement a set of upper-case letters.                             }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment edited to reflect implementation-defined status    }
{         of upper-case letters.  Write on failure revised.          }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF039(output);
begin
   if ('A' < 'B') and ('B' < 'C') and ('C' < 'D') and
      ('D' < 'E') and ('E' < 'F') and ('F' < 'G') and
      ('G' < 'H') and ('H' < 'I') and ('I' < 'J') and
      ('J' < 'K') and ('K' < 'L') and ('L' < 'M') and
      ('M' < 'N') and ('N' < 'O') and ('O' < 'P') and
      ('P' < 'Q') and ('Q' < 'R') and ('R' < 'S') and
      ('S' < 'T') and ('T' < 'U') and ('U' < 'V') and
      ('V' < 'W') and ('W' < 'X') and ('X' < 'Y') and
      ('Y' < 'Z') then
      writeln(' PASS...6.4.2.2-5 (CONF039)')
   else
      writeln(' FAIL...6.4.2.2-5 (CONF039)')
end.
