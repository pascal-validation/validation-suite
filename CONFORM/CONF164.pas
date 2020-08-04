{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.3-3, FILE=CONF164, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This program checks that function calls can appear in different    }
{:positions.                                                         }
{                                                                    }
{ This test is essentially a 'pretest' for the implementation-       }
{ dependent tests listed in each section of the main program.        }
{                                                                    }
{ Modification History :                                             }
{   V4.1: New test.                                                  }
{   V4.2: In pretests for 6.6.5.2-16 and 6.6.5.2-17 the upper        }
{         limits on the number of parameter evaluations have been    }
{         increased.                                                 }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF164(output);
type
   chfile = file of char;
   IT = 0 .. 2;
   poynter = ^rekord;
   rekord=record
            a : integer;
            b : boolean;
            link : poynter
         end;
var
   pass: boolean;
   count: 0 .. 24;
   v: array [ 1..1, 1..1, 1..1 ] of integer;
   x: array [ 1 .. 1 ] of chfile;
   ch: char;
   xset: set of IT;
   etab : array[IT] of IT;
   abool: boolean;
   xint: integer;
   a : array[IT] of integer;
   temp, ptr : poynter;

function sideeffect(i: integer): integer;
   begin
   count := count + 1;
   sideeffect := i;
   end;

procedure check(lower, upper: integer; condition: boolean);
   {checks value of count in required range. }
   begin
   if (count<lower) or (count>upper) or not condition then
      pass := false;
   count := lower;
   end;

function f( i, j: integer): integer;
   begin
   f := i + j
   end;
procedure order(p,q,r : integer);
   begin
   if p + q + r <> 3 then
      pass := false;
   end;
begin
   count := 0;
   pass := true;

   { Pretest for 6.5.3.2-6. }
   v[sideeffect(1),sideeffect(1),sideeffect(1)] := 1;
   check(3, 3, v[1,1,1]=1);

   { Pretest for 6.6.5.2-17. }
   rewrite( x[1] );
   write( x[sideeffect(1)], 'A', 'B', 'C' );
   check(4, 9, true);

   { Pretest for 6.6.5.2-16. }
   reset( x[1] );
   read( x[sideeffect(1)], ch, ch, ch);
   check(5, 10, ch='C');

   { Pretest for 6.7.1-11. }
   xset := [sideeffect(0),sideeffect(1),sideeffect(2)];
   check(8, 8, xset=[0..2]);

   { Pretest for 6.7.1-12 and 6.7.1-14. }
   xset := [sideeffect(0)..sideeffect(2)];
   check(10, 10, xset=[0,1,2]);

   { Pretest for 6.7.1-13. }
   etab[2] := 2;
   xset := [sideeffect(0),etab[sideeffect(2)]];
   check(12, 12, xset=[0,2]);

   { Pretest for 6.7.2.3-3. }
   abool := (sideeffect(0) = 1) and (sideeffect(1) = 0);
   check(13, 14, not abool);

   { Pretest for 6.7.2.3-4. }
   abool := (sideeffect(0) = 0) or (sideeffect(1) = 1);
   check(14, 15, abool);

   { Pretest for 6.7.3-2. }
   xint := f(f(sideeffect(0),sideeffect(1)),
          f(sideeffect(0),sideeffect(1)));
   check(18, 18, xint=2);

   { Pretest for 6.8.2.2-1. }
   a[sideeffect(0)] := sideeffect(0);
   check(20, 20, a[0]=0);

   { Pretest for 6.8.2.2-2. }
   new(ptr);
   ptr^.a:=1;
   ptr^.b:=true;
   new(temp);
   ptr^.link:=temp;
   temp^.a:=0;
   temp^.b:=false;
   temp:=ptr;
   ptr^.a:=sideeffect(ord(ptr=nil));
   check(21, 21, ptr^.a=0);

   { Pretest for 6.8.3.2-2. }
   order(sideeffect(0),sideeffect(1),sideeffect(2));
   check(24, 24, true);
   if pass then
      writeln(' PASS...6.7.3-3 (CONF164)')
   else
      writeln(' FAIL...6.7.3-3 (CONF164)')
end.
