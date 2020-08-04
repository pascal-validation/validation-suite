{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.6-2, FILE=CONF012, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This test checks that labels are distinguished by their apparent   }
{:integral-value.                                                    }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Test improved, space inserted in write.                    }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF012(output);
label
   5,0006,7;
begin
      goto 05;
   6: goto 7;
   5: goto 6;
 007: writeln(' PASS...6.1.6-2 (CONF012)')
end.
