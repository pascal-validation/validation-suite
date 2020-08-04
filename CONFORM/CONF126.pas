{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.3-19, FILE=CONF126, CLASS=CONFORMANCE, LEVEL=0          }
{                                                                    }
{:This test checks the new and dispose procedures.                   }
{                                                                    }
{ The DISPOSE procedure deals with an identifying-value, and so it   }
{ can be applied to any pointer-variable having this value.          }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test from BNI.                                         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF126(output);
type
   ptr = ^integer;
   rec=record
          case boolean of
             true:(a:integer);
             false:(b:ptr);
       end;
var
   p,q:^rec;
   g,h:ptr;
begin
   new(p,false);
   new(p^.b);
   p^.b^:=5;
   g:=p^.b;
   h:=g;
   dispose(g);
   new(h);
   h^:=7;
   p^.b:=h;
   q:=p;
   dispose(q,false);
   writeln(' PASS...6.6.5.3-19 (CONF126)')
end.
