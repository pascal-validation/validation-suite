{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.3-20, FILE=CONF127, CLASS=CONFORMANCE, LEVEL=0          }
{                                                                    }
{:This test contains multi-level pointers.                           }
{                                                                    }
{ NEW applied to a pointer to an array and then to its element which }
{ is itself a pointer.                                               }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test from BNI.                                         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF127(output);
type
   pint=^integer;
   ppint=^pint;
   arr=array[1..2] of ppint;
   parr=^arr;
   pparr=^parr;
var
   ppi:ppint;
   ppa:pparr;
begin
   new(ppi);
   new(ppi^);
   ppi^^:=1;
   new(ppa);
   new(ppa^);
   new(ppa^^[ppi^^]);
   new(ppa^^[ppi^^]^);
   ppa^^[ppi^^]^^:=5;
   ppi^^:=ppi^^+1;
   new(ppa^^[ppi^^]);
   new(ppa^^[ppi^^]^);
   ppa^^[ppi^^]^^:=7;
   if ppa^^[2]^^-ppa^^[1]^^=ppi^^
      then writeln(' PASS...6.6.5.3-20 (CONF127)')
      else writeln(' FAIL...6.6.5.3-20 (CONF127)')
end.
