{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.7.2-1, FILE=LEV1F24, CLASS=CONFORMANCE, LEVEL=1         }
{                                                                    }
{:This test checks all the main facilities of value conformant       }
{:arrays.                                                            }
{                                                                    }
{ Each syntactic form of actual parameter is provided.               }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program LEV1F24(output);
const
   str = 'abc';
var
   fail: boolean;
   st: packed array [1..3] of char;
procedure p(a: packed array [la..ua: integer] of char;
            b: packed array [lb..ub: integer] of char;
            c: packed array [lc..uc: integer] of char);
   var
      i: integer;
   begin
   fail := fail or (la<>1) or (lb<>1) or (lc<>1) or
                  (ua<>3) or (ub<>3) or (uc<>3);
   for i := 1 to 3 do
      fail := fail or (a[i]<>b[i]) or (b[i]<>c[i]);
   end;
begin
fail := false;
st := 'abc';
p('abc', st, str);
p(('abc'), (st), (str));
if fail then
   writeln(' FAIL...6.6.3.7.2-1 (LEV1F24)')
else
   writeln(' PASS...6.6.3.7.2-1 (LEV1F24)')
end.
