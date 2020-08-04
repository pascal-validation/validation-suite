{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.6.4-10, FILE=CONF140, CLASS=CONFORMANCE, LEVEL=0          }
{                                                                    }
{:This test checks that succ and pred can be applied to literal      }
{:values at the end of the valid range                               }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V5.0 New test.                                                   }
{   V5.1 Test number altered from 6.6.6.4-9.                         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF140(output);
type
  range = 511..512;
var
  vs, vss, vsp, vps, vpp, vp: range;
begin
     vs := succ(510);
     vss := succ(succ(509));
     vsp := succ(pred(512));
     vps := pred(succ(512));
     vpp := pred(pred(514));
     vp := pred(513);

     if (vs <> 511) or (vss <> 511) or (vsp <> 512) or
        (vps <> 512) or (vp <> 512) or (vpp<>512) then
        writeln(' FAIL...6.6.6.4-10 (CONF140)')
     else
        writeln(' PASS...6.6.6.4-10 (CONF140)')
end.
