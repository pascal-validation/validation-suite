{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.6-3, FILE=CONF013, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This test contains a label made up of five digits and whose        }
{:integral value is less than 10000.                                 }
{                                                                    }
{ A label is a digit-sequence whose admissibility is determined by   }
{ its apparent integral value.  Thus the label in this program is    }
{ correct Pascal.  Some deviant processors may limit labels to four  }
{ digits alone, which is not correct.                                }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test derived from DP7185.                              }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF013(output);
label
   09876;
begin
   goto 09876;
09876:
   writeln(' PASS...6.1.6-3 (CONF013)')
end.
