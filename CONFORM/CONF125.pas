{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.3-18, FILE=CONF125, CLASS=CONFORMANCE, LEVEL=0          }
{                                                                    }
{:This test checks that new and dispose can be applied to any kind   }
{:of expressions with pointer values.                                }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test from BNI.                                         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF125(output);
type
   rec=record
          case tag:boolean of
             true:(a:integer);
             false:(b:^integer);
       end;
   pint=^integer;
var
   v:array[1..2] of ^rec;
   p:^pint;
begin
   new(p);
   new(p^);
   p^^:=1;
   new(v[p^^],true);
   v[1]^.tag:=true;
   v[1]^.a:=p^^+2;
   new(v[p^^+1],false);
   v[2]^.tag:=false;
   new(v[2]^.b);
   v[2]^.b^:=3;
   if (v[1]^.a=v[2]^.b^)
      then writeln (' PASS...6.6.5.3-18 (CONF125)')
      else writeln (' FAIL...6.6.5.3-18 (CONF125)')
end.
