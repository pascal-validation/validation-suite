{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.3-7, FILE=CONF061, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This test contains negative integers as case-constants in a        }
{:record-type.                                                       }
{                                                                    }
{ Some compilers do not accept them.                                 }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test from BNI.                                         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF061(output);
type
    level = -1..1;
    state = record
               case l:level of
                  0:(stable:integer);
                  1:(positive:integer);
                  -1:(negative:integer);
            end;
var
    st:state;
begin
    st.l:=-1;
    st.negative:=10;
    writeln(' PASS...6.4.3.3-7 (CONF061)')
end.
