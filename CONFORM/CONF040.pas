{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.2.2-6, FILE=CONF040, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This test checks the ordering of the lower-case letters a-z.       }
{                                                                    }
{ The Pascal Standard states that the lower-case letters a-z are     }
{ ordered, but not necessarily contiguous. This program determines   }
{ if this is so, and prints a message as to whether the processor    }
{ passes or not. The test is not relevant to processors that do not  }
{ implement a set of lower-case letters.                             }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment edited to reflect implementation-defined status    }
{         of lower-case letters.  Write on failure revised.          }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF040(output);
begin
   if ('a' < 'b') and ('b' < 'c') and ('c' < 'd') and
      ('d' < 'e') and ('e' < 'f') and ('f' < 'g') and
      ('g' < 'h') and ('h' < 'i') and ('i' < 'j') and
      ('j' < 'k') and ('k' < 'l') and ('l' < 'm') and
      ('m' < 'n') and ('n' < 'o') and ('o' < 'p') and
      ('p' < 'q') and ('q' < 'r') and ('r' < 's') and
      ('s' < 't') and ('t' < 'u') and ('u' < 'v') and
      ('v' < 'w') and ('w' < 'x') and ('x' < 'y') and
      ('y' < 'z') then
      writeln(' PASS...6.4.2.2-6 (CONF040)')
   else
      writeln(' FAIL...6.4.2.2-6 (CONF040)')
end.
