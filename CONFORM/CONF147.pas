{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.1-7, FILE=CONF147, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This test checks that the set-constructor can denote both packed   }
{:and unpacked set types in the appropriate contexts.                }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V4.2: Second occurrence of 'inormal' in line 31 changed to       }
{         'ipakked'.                                                 }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF147(output);
type
   ET      = (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P);
   IT      = 0..15;
var
   enormal :        set of ET;
   epakked : packed set of ET;
   cnormal :        set of char;
   cpakked : packed set of char;
   inormal :        set of IT;
   ipakked : packed set of IT;
begin
   enormal := []; epakked := [];
   cnormal := []; cpakked := [];
   inormal := []; ipakked := [];
   enormal := [D,C..H,N];
   epakked := [D,C..H,N];
   cnormal := ['D','C'..'H','N'];
   cpakked := ['D','C'..'H','N'];
   inormal := [3,2..6,13];
   ipakked := [3,2..6,13];
   if (enormal=[C..N]-[I..M]) and (epakked=[C..N]-[I..M]) and
      (cnormal=['C'..'N']-['I'..'M']) and
      (cpakked=['C'..'N']-['I'..'M']) and
      (inormal=[2..13]-[7..12]) and (ipakked=[2..13]-[7..12])
   then
      writeln(' PASS...6.7.1-7 (CONF147)')
   else
      writeln(' FAIL...6.7.1-7 (CONF147)')
end.
