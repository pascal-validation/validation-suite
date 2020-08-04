{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.3-22, FILE=CONF128, CLASS=CONFORMANCE, LEVEL=0          }
{                                                                    }
{:This test checks the extended forms of new and dispose.            }
{                                                                    }
{ A variant can be left unspecified if it is at a deeper level of    }
{ nesting than that specified by cn in new(p,c1,  ,cn).              }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test from BNI.                                         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF128(output);
type
   two=1..2;
   colour=(blue,green);
   rec=record
          case col:colour of
             blue:(case two of
                      1:(case boo:boolean of
                            true:(a:char);
                            false:(b:1..4));
                      2:(c:char));
             green:(d:char);
end;
var
   p:^rec;
begin
   new(p,blue,1);
   p^.col:=blue;
   p^.boo:=false;
   p^.b:=2;
   p^.boo:=true;
   p^.a:='A';
   dispose(p,blue,1);
   writeln(' PASS...6.6.5.3-22 (CONF128)')
end.
