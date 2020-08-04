{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.2.2-4, FILE=CONF038, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This test checks that the character values representing the digits }
{:0..9 are ordered and contiguous.                                   }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Write in case of failure revised.                          }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF038(output);
var
   a,b : boolean;
begin
   a:=(succ('0') = '1') and
      (succ('1') = '2') and
      (succ('2') = '3') and
      (succ('3') = '4') and
      (succ('4') = '5') and
      (succ('5') = '6') and
      (succ('6') = '7') and
      (succ('7') = '8') and
      (succ('8') = '9') ;
   b:=('0' < '1') and
      ('1' < '2') and
      ('2' < '3') and
      ('3' < '4') and
      ('4' < '5') and
      ('5' < '6') and
      ('6' < '7') and
      ('7' < '8') and
      ('8' < '9') ;
   if a and b then
      writeln(' PASS...6.4.2.2-4 (CONF038)')
   else
      writeln(' FAIL...6.4.2.2-4 (CONF038)')
end.
