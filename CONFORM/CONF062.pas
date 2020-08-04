{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.3-17, FILE=CONF062, CLASS=CONFORMANCE, LEVEL=0          }
{                                                                    }
{:This test contains a variant-part with only one variant.           }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test from BNI.                                         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF062(output);
type
    one = 1..1;
    two = (a,b);
var
    rec1:record
            case tag:one of
               1:(i:integer);
         end;
    rec2:record
            case tag:two of
               a,b:(i:integer);
         end;
    rec3:record
            case two of
               a,b:(i:integer);
         end;
begin
    rec1.tag:=1;
    rec1.i:=5;
    rec2.tag:=a;
    rec2.i:=5;
    rec3.i:=5;
    writeln (' PASS...6.4.3.3-17 (CONF062)')
end.
