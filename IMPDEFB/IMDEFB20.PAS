{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.5.3-1, FILE=IMDEFB20, CLASS=IMPLEMENTATIONDEFINEDBEHAVIOUR, }
{ LEVEL=0                                                            }
{                                                                    }
{:This test checks that the three forms of addressing (indexing,     }
{:indirection and field selection) do not interact incorrectly.      }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V4.2: Short-form message included in output.                     }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program IMDEFB20(output);
type
   subscript = -1 .. 1;
   ptarr = ^arr;
   ptrec = ^rec;
   arr = array [subscript] of record
                                a: ptarr;
                                b: ptrec;
                                c: array [subscript] of integer;
                              end;
   rec = record
            x: arr;
            y: ptarr;
            z: ptrec;
         end;
var
   p, q: array [subscript] of rec;
   i, j, k : subscript;
   y: ptarr;
   z: ptrec;
   fail: boolean;
   caseno: integer;
procedure checkequal(x, y: integer);
   begin
   if x <> y then
      begin
      fail := true;
      writeln('NOT EQUAL ', x, y, 'CASE NO ', caseno);
      end;
   caseno := caseno + 1
   end;
begin
y := nil;
z := nil;
for i := -1 to 1 do
   begin
   p[i].y := y;
   p[i].z := z;
   new( q[i].y );
   y := q[i].y;
   new( q[i].z );
   z := q[i].z;
   for j := -1 to 1 do
      begin
      p[i].x[j].a := nil;
      p[i].x[j].b := nil;
      q[i].x[j].a := nil;
      q[i].x[j].b := nil;
      for k := -1 to 1 do
         begin
         p[i].x[j].c[k] := i + j + k;
         q[i].x[j].c[k] := p[i].x[j].c[k] + 100;
         end;
      end;
   y^ := p[i].x;
   z^ := q[i];
   end;
for i := 1 downto -1 do
   begin
   for j := -1 to 1 do
      begin
      p[i].x[j].a := q[-i*j].y;
      q[i].x[j].a := q[i*abs(j)].y;
      p[i].x[j].b := q[abs(i)*j].z;
      q[i].x[j].b := q[-i*j].z;
      end;
   end;
p[-1].x[-1].a^[-1].a := q[-1].y;
q[-1].x[-1].a^[0].a := q[0].y;
p[1].x[1].a^[-1].b := p[1].z;
q[-1].y^[0].b := p[-1].x[0].b;
p[0].y^[1].b := p[-1].x[-1].b;
p[-1].x[-1].b^.x[-1].a := q[0].y;
q[-1].x[-1].b^.x[-1].b := q[-1].x[-1].b;
q[-1].z^.x[0].a := q[0].y;
p[1].x[-1].b^.x[0].b := q[0].z;
q[1].x[1].b^.x[1].a := q[-1].y;
q[-1].z^.x[1].b := q[1].x[-1].b;
p[-1].x[0].a^[-1].a := q[1].y;
q[-1].x[0].a^[-1].b := q[1].z;
p[0].x[-1].a^[0].a := p[1].y;
q[0].x[-1].a^[0].b := q[1].z;
p[0].x[0].a^[1].a := q[-1].y;
p[0].x[0].a^[1].a := q[-1].y;
q[0].x[0].a^[1].b := p[1].x[-1].b;
p[0].x[-1].b^.x[-1].a := q[1].y;
q[0].x[1].b^.x[-1].b := q[0].x[-1].b;
p[0].x[0].b^.x[0].a := p[1].y;
q[0].x[0].b^.x[0].b := p[1].z;
p[0].x[1].b^.x[1].a := q[-1].y;
q[0].x[1].b^.x[1].b := q[-1].z;
p[1].x[-1].a^[-1].a := q[1].y;
q[1].x[1].a^[-1].b := q[-1].z;
p[-1].x[1].a^[0].a := q[1].y;
q[1].y^[0].b := q[-1].z;
q[1].y^[1].a := q[-1].y;
q[1].y^[1].b := q[1].z;
p[-1].x[1].b^.x[-1].a := q[-1].y;
q[-1].x[1].b^.x[-1].b := q[-1].z;
q[1].x[-1].b^.x[0].a := q[0].y;
p[1].x[1].b^.x[0].b := q[0].z;
q[1].z^.x[1].a := q[1].y;
q[1].z^.x[1].b := q[1].z;
fail := false;
caseno := 1;
checkequal(p[p[-1].x[-1].c[-1]+2].x[-1].a^[-1].c[1], -1 );
checkequal(q[-1].x[-1].a^[-1].a^[0].a^[-1].c[0], -1 );
checkequal(q[-1].x[-1].a^[0].a^[-1].c[0], -1 );
checkequal(q[1].y^[-1].c[0], 0 );
checkequal(q[p[-1].x[0].c[0]].x[0].c[1], 100 );
checkequal(p[-1].x[1].a^[-1].a^[-1].b^.x[0].c[1], 100 );
with p[0].x[0].b^ do
   begin
   checkequal(x[-1].a^[-1].c[0], 0 );
   checkequal(x[0].c[-1], 99 );
   checkequal(x[1].c[0], 101 );
   end;
checkequal(q[-1].y^[-1].b^.x[-1].b^.x[0].c[-1], 99 );
checkequal(q[1].z^.x[-1].b^.x[0].c[-1], 98 );
checkequal(q[-1].z^.x[0].c[-1], 98 );
checkequal(p[0].x[1].a^[0].b^.x[0].c[1], 102 );
checkequal(q[1].x[0].b^.x[0].a^[1].c[-1], 0 );
if fail then
   writeln(' FAIL...6.5.3-1 (IMDEFB20)')
else
  begin
    writeln(' OUTPUT FROM TEST...6.5.3-1');
    writeln(' The three forms of addressing (indexing, indirection',
           ' and field selection) do not interact incorrectly');
    writeln(' IMPLEMENTATION DEFINED BEHAVIOUR...6.5.3-1 (IMDEFB20)');
  end
end.
