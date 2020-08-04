{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.5-11, FILE=IMDEFB04,                                      }
{ CLASS=IMPLEMENTATIONDEFINEDBEHAVIOUR, LEVEL=0                      }
{                                                                    }
{:This test checks that negative powers of the radix, stored as      }
{:literal values, are converted exactly.                             }
{                                                                    }
{ An implementation which does not correctly round literal values    }
{ could fail this test for large values of the exponent. Such a      }
{ failure indicates a poor quality implementation rather than one    }
{ which is demonstrably incorrect according to the Standard.         }
{                                                                    }
{ Modification History :                                             }
{   V4.0: Machar altered.                                            }
{   V4.1: Machar altered.                                            }
{   V4.2: Short-form message included in output.                     }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{   V5.4: Truncated lines 265 and 266 of V5.3 to 72 characters       }
{         which is max line length that can be assumed               }
{                                                                    }

program IMDEFB04(output);

const
   maxe = 30;
var
   ibeta, it, irnd, ngrd, machep, negep, iexp, minexp,
   maxexp: integer;  { integer parameters to machar}
   eps, epsneg, xmin, xmax: real; { real parameters to machar}
   i, errorcount: integer;
   arr: array [ 1 .. maxe ] of real;


function forcestore(x: real): real;
   { see 'st' in 6.6.6.2-11 for details}
   var
      y: array[1..3] of real;
   begin
   y[1] := x; y[2] := 0.0; y[3] := y[1] + y[2];
   y[1] := y[3]; forcestore := y[trunc(y[2]) + 1] + y[2]
   end;

procedure machar (var ibeta, it, irnd, ngrd, machep, negep, iexp,
      minexp, maxexp: integer; var eps, epsneg, xmin, xmax: real);
   { see 6.6.6.2-11 for details}
   const
      zero = 0.0; one  = 1.0;
   var
      i, iz, j, k, mx: integer;
      a, b, beta, betain, betam1, y, z: real;
      underflo: boolean;
   function st(x: real): real;
      begin
      st := forcestore(x);
      end;

   begin
   a := one + one;
   while st(st(st(a + one) - a) - one) = zero do
      a := a + a;
   b := one + one;
   while st(st(a + b) - a) = zero do
      b := b + b;
   ibeta := trunc (st(a + b) - a); beta := ibeta;
   it := 0; b := one;
   repeat
      begin it := it + 1; b := b * beta end
   until st(st(st(b + one) - b) - one) <> zero;
   irnd := 0; betam1 := beta - one;
   if st(st((a + beta) + betam1) - (a + beta)) <> zero then
      irnd := 1;
   negep := it + 3; betain := one / beta; a := one;
   for i := 1 to negep do
      a := a * betain;
   b := a;
   while st(st(one - a) - one) = zero do
      begin a := a * beta; negep := negep - 1 end;
   negep := - negep; epsneg := a;
   if (ibeta <> 2) and (irnd <> 0) then
      begin
      a := a * st(one + a) / (one + one);
      if st(st(one - a) - one) <> zero then
         epsneg := a;
      end;
   machep := - it - 3; a := b;
   while st(st(one + a) - one) = zero do
      begin a := a * beta; machep := machep + 1 end;
   eps := a;
   if (ibeta <> 2) and (irnd <> 0) then
      begin
      a := a * st(one + a) / (one + one);
      if st(st(one + a) - one) <> zero then
         eps := a;
      end;
   ngrd := 0;
   if (irnd = 0) and (st(st(one + eps) * one - one) <> zero) then
      ngrd := 1;
   i := 0; k := 1; z := betain; underflo := false;
   repeat
      begin
      y := z; z := y * y; a := z * one;
      if (st(a + a) = zero) or (abs (z) >= y) then
         underflo := true
      else
         begin i := i + 1; k := k + k end;
      end
   until underflo;
   if ibeta <> 10 then
      begin iexp := i + 1; mx := k + k end
   else
      begin iexp := 2; iz := ibeta;
      while k >= iz do
         begin iz := iz * ibeta; iexp := iexp + 1 end;
      mx := iz + iz - 1;
      end;
   underflo := false;
   repeat
      begin
      xmin := y; y := y * betain; a := y * one;
      if (st(a + a) = zero) or (abs (y) >= xmin)
            or (st(y * st(one + eps)) <= y) then
         underflo := true
      else
         k := k + 1;
      end
   until underflo;
   minexp := - k;
   if (mx <= k + k - 3) and (ibeta <> 10) then
      begin mx := mx + mx; iexp := iexp + 1 end;
   maxexp := mx + minexp; i := maxexp + minexp;
   if (ibeta = 2) and (i = 0) then
      maxexp := maxexp - 1;
   if i > 20 then
      maxexp := maxexp - 1;
   if a <> y then
      maxexp := maxexp - 2;
   maxexp := maxexp - 1; minexp := minexp + 2;
   if maxexp > - minexp - 2 then
      maxexp := - minexp - 2;
   xmin := betain;
   for i := -1 downto minexp + 1 do
      xmin := xmin * betain;
   xmax := one - epsneg;
   if st(xmax * one) <> xmax then
      xmax := one - st(beta * epsneg);
   xmax := xmax / (beta * beta * beta * xmin);
   for j := 1 to maxexp + minexp + 3 do
      if ibeta = 2 then
         xmax := xmax + xmax
      else
         xmax := xmax * beta;
   end;




procedure test(radix: integer);
   var
      x, y: real;
      i: integer;
   procedure equal(u, v: real);
      begin
      if u <> v then
         begin
         errorcount := errorcount + 1;
         if errorcount < 10 then
            writeln(' ',u,v)
         end
      end; {equal}
   begin
   x := 1.0/radix;
   { Test above division is exact}
   equal(1.0, x * radix);
   y := x;
   for i := 1 to maxe do
      begin
      equal(y, arr[i] );
      y := forcestore( y * x )
      end
   end; {test}

begin
   machar( ibeta, it, irnd, ngrd, machep, negep, iexp, minexp,
      maxexp, eps, epsneg, xmin, xmax);
   errorcount := 0;
   if (ibeta = 2) or (ibeta = 4) or (ibeta = 8) or (ibeta = 16) then
      begin
      arr[1] := 0.5;
      arr[2] := 0.25;
      arr[3] := 0.125;
      arr[4] := 0.0625;
      arr[5] := 0.03125;
      arr[6] := 0.015625;
      arr[7] := 0.0078125;
      arr[8] := 0.00390625;
      arr[9] := 0.001953125;
      arr[10] := 0.0009765625;
      arr[11] := 0.00048828125;
      arr[12] := 0.000244140625;
      arr[13] := 0.0001220703125;
      arr[14] := 0.00006103515625;
      arr[15] := 0.000030517578125;
      arr[16] := 0.0000152587890625;
      arr[17] := 0.00000762939453125;
      arr[18] := 0.000003814697265625;
      arr[19] := 0.0000019073486328125;
      arr[20] := 0.00000095367431640625;
      arr[21] := 0.000000476837158203125;
      arr[22] := 0.0000002384185791015625;
      arr[23] := 0.00000011920928955078125;
      arr[24] := 0.000000059604644775390625;
      arr[25] := 0.0000000298023223876953125;
      arr[26] := 0.00000001490116119384765625;
      arr[27] := 0.000000007450580596923828125;
      arr[28] := 0.0000000037252902984619140625;
      arr[29] := 0.00000000186264514923095703125;
      arr[30] := 0.000000000931322574615478515625;
      test(2)
      end
   else if ibeta = 10 then
      begin
      arr[1] := 0.1;
      arr[2] := 0.01;
      arr[3] := 0.001;
      arr[4] := 0.0001;
      arr[5] := 0.00001;
      arr[6] := 0.000001;
      arr[7] := 0.0000001;
      arr[8] := 0.00000001;
      arr[9] := 0.000000001;
      arr[10] := 0.0000000001;
      arr[11] := 0.00000000001;
      arr[12] := 0.000000000001;
      arr[13] := 0.0000000000001;
      arr[14] := 0.00000000000001;
      arr[15] := 0.000000000000001;
      arr[16] := 0.0000000000000001;
      arr[17] := 0.00000000000000001;
      arr[18] := 0.000000000000000001;
      arr[19] := 0.0000000000000000001;
      arr[20] := 0.00000000000000000001;
      arr[21] := 0.000000000000000000001;
      arr[22] := 0.0000000000000000000001;
      arr[23] := 0.00000000000000000000001;
      arr[24] := 0.000000000000000000000001;
      arr[25] := 0.0000000000000000000000001;
      arr[26] := 0.00000000000000000000000001;
      arr[27] := 0.000000000000000000000000001;
      arr[28] := 0.0000000000000000000000000001;
      arr[29] := 0.00000000000000000000000000001;
      arr[30] := 0.000000000000000000000000000001;
      test(ibeta)
      end;

   if errorcount > 0 then
      writeln(' FAIL...6.1.5-11, REAL VALUES (',errorcount,' TIMES)',
              ' (IMDEFB04)')
   else
    begin
      writeln(' OUTPUT FROM TEST...6.1.5-11');
      writeln(' Negative powers of the radix stored as literal values',
                      ', in the form 0.0000123, are converted exactly');
     writeln(' IMPLEMENTATION DEFINED BEHAVIOUR...6.1.5-11 (IMDEFB04)');
    end;     
end.
