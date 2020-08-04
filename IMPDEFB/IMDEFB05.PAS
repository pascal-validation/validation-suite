{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.5-12, FILE=IMDEFB05,                                      }
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
{                                                                    }

program IMDEFB05(output);

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
      y := forcestore( y * x)
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
      arr[4] := 0.625E-1;
      arr[5] := 0.3125E-1;
      arr[6] := 0.15625E-1;
      arr[7] := 0.78125E-2;
      arr[8] := 0.390625E-2;
      arr[9] := 0.1953125E-2;
      arr[10] := 0.9765625E-3;
      arr[11] := 0.48828125E-3;
      arr[12] := 0.244140625E-3;
      arr[13] := 0.1220703125E-3;
      arr[14] := 0.6103515625E-4;
      arr[15] := 0.30517578125E-4;
      arr[16] := 0.152587890625E-4;
      arr[17] := 0.762939453125E-5;
      arr[18] := 0.3814697265625E-5;
      arr[19] := 0.19073486328125E-5;
      arr[20] := 0.95367431640625E-6;
      arr[21] := 0.476837158203125E-6;
      arr[22] := 0.2384185791015625E-6;
      arr[23] := 0.11920928955078125E-6;
      arr[24] := 0.59604644775390625E-7;
      arr[25] := 0.298023223876953125E-7;
      arr[26] := 0.1490116119384765625E-7;
      arr[27] := 0.7450580596923828125E-8;
      arr[28] := 0.37252902984619140625E-8;
      arr[29] := 0.186264514923095703125E-8;
      arr[30] := 0.931322574615478515625E-9;
      test(2)
      end
   else if ibeta = 10 then
      begin
      arr[1] := 0.1;
      arr[2] := 0.1E-1;
      arr[3] := 0.1E-2;
      arr[4] := 0.1E-3;
      arr[5] := 0.1E-4;
      arr[6] := 0.1E-5;
      arr[7] := 0.1E-6;
      arr[8] := 0.1E-7;
      arr[9] := 0.1E-8;
      arr[10] := 0.1E-9;
      arr[11] := 0.1E-10;
      arr[12] := 0.1E-11;
      arr[13] := 0.1E-12;
      arr[14] := 0.1E-13;
      arr[15] := 0.1E-14;
      arr[16] := 0.1E-15;
      arr[17] := 0.1E-16;
      arr[18] := 0.1E-17;
      arr[19] := 0.1E-18;
      arr[20] := 0.1E-19;
      arr[21] := 0.1E-20;
      arr[22] := 0.1E-21;
      arr[23] := 0.1E-22;
      arr[24] := 0.1E-23;
      arr[25] := 0.1E-24;
      arr[26] := 0.1E-25;
      arr[27] := 0.1E-26;
      arr[28] := 0.1E-27;
      arr[29] := 0.1E-28;
      arr[30] := 0.1E-29;
      test(ibeta)
      end;


   if errorcount > 0 then
      writeln(' FAIL...6.1.5-12, REAL VALUES (',errorcount,
              ' TIMES) (IMDEFB05)')
   else
     begin
       writeln(' OUTPUT FROM TEST...6.1.5-12');
       writeln(' Negative powers of the radix stored as literal values',
             ', in the form 0.123E-5, are converted exactly');
       writeln(' IMPLEMENTATION DEFINED BEHAVIOUR...6.1.5-12',
               ' (IMDEFB05)');
     end
end.
