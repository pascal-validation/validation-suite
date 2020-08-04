{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.3-15, FILE=CONF124, CLASS=CONFORMANCE, LEVEL=0          }
{                                                                    }
{:This program checks that the longer forms of new and dispose       }
{:behave as required.                                                }
{                                                                    }
{ Variants specified in new and dispose must be the same, but the    }
{ corresponding case-constants can differ.                           }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test from BNI.                                         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF124(output);
type
    four=(a,b,c,d);
    five=1..5;
    rec =record
            case tag1:four of
               a:(o:char);
               b,c,d:(case tag2:five of
                         1,2,3:(p:char);
                         4,5:(q:integer));
         end;
var
    ptr:^rec;
    ch:char;
    nb:five;
begin
    new(ptr,d,3);
    ptr^.tag1:=c;
    ptr^.tag2:=2;
    ptr^.p:='A';
    ch:=ptr^.p;
    nb:=ptr^.tag2;
    dispose(ptr,b,1);
    writeln (' PASS...6.6.5.3-15 (CONF124)');
end.
