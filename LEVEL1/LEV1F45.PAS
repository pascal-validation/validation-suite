{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.8-3, FILE=LEV1F45, CLASS=CONFORMANCE, LEVEL=1           }
{                                                                    }
{:This test checks the application of the conformability rules for   }
{:higher dimensions.                                                 }
{                                                                    }
{ Modification History :                                             }
{   V4.0: Output layout altered.                                     }
{   V4.3: Incorrect sorting fixed - acknowledgement: Wim Braun.      }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program LEV1F45(output);
var
   fail: boolean;
   a: array[ 1 .. 4 ] of array[ 0 .. 5 ] of integer;
   b: array[ 0 .. 5 ] of array[ -1 .. 4 ] of integer;
   c: array[ -11 .. -6 ] of array[ 0 .. 3 ] of integer;
   i, j: integer;
procedure sort( var a: array[la..ua: integer] of integer);
   { See CACM Vol 21, No 10 pp847-857, (1978)}
   var
      max, i: integer;
   procedure quicksort(l, r: integer);
      { sort a[l..r] where a[r+1] >= all a[l..r]}
      label
         1;
      var
         temp, v, i, j: integer;
      begin
      if r > l then
         begin
         i := l;  j := r+1;  v := a[l];
         repeat
            repeat
               i := i + 1
            until a[i] >= v;
            repeat
               j := j - 1
            until a[j] <= v;
            if j < i then
               goto 1;
            temp := a[j];  a[j] := a[i];  a[i] := temp;
         until false;
      1: temp := a[j];  a[j] := a[l];  a[l] := temp;
         quicksort(l, j - 1);
         quicksort(i, r)
         end {if}
      end;  {quicksort}
   begin
   max := la;
   for i := la+1 to ua do
      if a[i] > a[max] then
         max := i;
   i := a[max];  a[max] := a[ua];  a[ua] := i;
   quicksort(la, ua - 1)
   end; {sort}

procedure setmatrix( var x: array[lx1..ux1: integer] of
                            array[lx2..ux2: integer] of integer;
             var st: packed array[ls .. us: integer] of char);
   var
      i, j, sp: integer;
   begin
   if (ux1-lx1+1)*(ux2-lx2+1) <> (us-ls+1) then
      fail := true
   else
      begin
      sp := ls;
      for j := lx2 to ux2 do
      for i := lx1 to ux1 do
         begin
         x[i,j] := ord(st[sp]) - ord('0');
         sp := sp + 1
         end
      end
   end; {setmatrix}

procedure prmatrix( var x: array[lx1..ux1: integer;
                                lx2..ux2: integer] of integer);
   var
      i, j: integer;
   begin
   writeln(lx1:4, ' TO ', ux1:1, ' BY ', lx2:1, ' TO ', ux2:1);
   for i := lx1 to ux1 do
      begin
      write('   ');
      for j := lx2 to ux2 do
         write(x[i,j]:4);
      writeln;
      end
   end; {prmatrix}

procedure setsort(var y: array[ly1..uy1: integer;
                               ly2..uy2: integer] of integer;
                     st: packed array [ls..us: integer] of char);
   var
      i: integer;
   begin
   setmatrix(y, st);
   for i := ly1 to uy1 do
      sort(y[i]);
   prmatrix(y)
   end; {setsort}

procedure mult( var u: array[lu1..uu1: integer] of
                       array[lu2..uu2: integer] of integer;
                var v: array[lv1..uv1: integer] of
                       array[lv2..uv2: integer] of integer;
                var w: array[lw1..uw1: integer] of
                       array[lw2..uw2: integer] of integer);
   { w := u*v, matrix product}
   var
      i, j, k, sum: integer;
   begin
   if (uu1-lu1 <> uv2-lv2) or (uu2-lu2 <> uw1-lw1) or
      (uv1-lv1 <> uw2-lw2) then
      fail := true
   else
      begin
      for i := lw1 to uw1 do
      for j := lw2 to uw2 do
         begin
         sum := 0;
         for k := lu1 to uu1 do
           sum := sum + u[k,i-lw1+lu2]*v[j-lw2+lv1,k-lu1+lv2];
         w[i,j] := sum;
         end
      end
   end; {mult}

procedure compute( var u: array[lu1..uu1: integer;
                               lu2..uu2: integer] of integer;
                   var v: array[lv1..uv1: integer;
                               lv2..uv2: integer] of integer;
                   var w: array[lw1..uw1: integer;
                               lw2..uw2: integer] of integer);
   procedure checkmatrix( var x: array[lx1..ux1: integer] of
                               array[lx2..ux2: integer] of integer;
                    d1: packed array[l1 .. u1: integer] of char;
                    d2: packed array[l2 .. u2: integer] of char;
                    d3: packed array[l3 .. u3: integer] of char);
      var
         i, j, sp: integer;
      begin
      if ((ux1-lx1+1)*(ux2-lx2+1) <> (u1-l1+1)) or
         (l2 <> l1) or (l3 <> l1) or (u2 <> u1) or (u3 <> u1) then
         fail := true
      else
         begin
         sp := l1;
         for i := lx1 to ux1 do
         for j := lx2 to ux2 do
            begin
            if 100*(ord(d3[sp]) - ord('0')) +
               10*(ord(d2[sp]) - ord('0')) +
               ord(d1[sp]) - ord('0') <> x[i,j] then
               fail := true;
            sp := sp + 1
            end
         end
      end; {checkmatrix}

   begin
   setsort(u, '012345678901234567890123');
   setsort(v, '567890123456789012345678901234567890');
   mult(v, u, w);
   w[lw1] := w[uw1];
   prmatrix(w);
   checkmatrix(w, '894525692705274981038945',
                  '618334347980142549606183',
                  '121200000001111111121212');
   end;
begin
fail := false;
compute(a, b, c);
if fail then
   writeln(' FAIL...6.6.3.8-3 (LEV1F45)')
else
   writeln(' PASS...6.6.3.8-3 (LEV1F45)')
end.
