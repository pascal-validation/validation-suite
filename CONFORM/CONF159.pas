{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.2.4-6, FILE=CONF159, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This test checks the set operators, with random values.            }
{                                                                    }
{ This test is applied to a larger set size since optimization may   }
{ have been employed for small sets of 6 elements; an exhaustive     }
{ test is too expensive in computation time.                         }
{                                                                    }
{ Modification History :                                             }
{   V4.0: Size of set lowered.                                       }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF159(output);
const
   Big = 127;
   Reps = 100;
type
   IT       = 0..Big;
   IsetType = set of IT;
   IvecType = array[IT] of boolean;
var
   j        : IT;
   s1,s2    : IsetType;
   vr,v1,v2 : IvecType;
   count    : 1..Reps;
   ix       : integer;
   error    : boolean;

   procedure DoIt;

      procedure Union(var aa:IvecType; var ab,ac:IvecType);
      var i:IT;
      begin
         for i:=0 to Big do aa[i]:=ab[i] or ac[i]
      end;

      procedure Intersection(var aa:IvecType; var ab,ac:IvecType);
      var i:IT;
      begin
         for i:=0 to Big do aa[i]:=ab[i] and ac[i]
      end;

      procedure Difference(var aa:IvecType; var ab,ac:IvecType);
      var i:IT;
      begin
         for i:=0 to Big do aa[i]:=ab[i] and not ac[i]
      end;

      procedure Check(SetOfI:IsetType; var VecOfI:IvecType);
      var i:IT;
      begin
         for i:=0 to Big do
            if VecOfI[i] then
               begin
                  if not (i in SetOfI) then error:=true
               end
            else
              if (i in SetOfI) then error:=true
      end;

   begin { of body of DoIt }
      Union       (vr,v1,v2); Check(s1+s2,vr);
      Intersection(vr,v1,v2); Check(s1*s2,vr);
      Difference  (vr,v1,v2); Check(s1-s2,vr)
   end;

   procedure Zap(var ba:IsetType; var bb:IvecType);
   var
      cc  :  IT;

      function random  :  integer;
      var
         ni,k,r:integer;
      begin
         k:=ix div 177; r:=ix-k*177;
         ni:=-2*k+171*r;
         if ni<0 then ix:=ni+30269 else ix:=ni;
         random:=ix
      end;

   begin { of body of Zap }
      cc:=random mod (Big+1);
      ba:=ba+[cc]; bb[cc]:=true; { Add member, if not present }
      cc:=random mod (Big+1);
      ba:=ba-[cc]; bb[cc]:=false; { Remove member, if present }
   end;

begin
   ix:=12; error:=false;

   s1:=[]; for j:=0 to Big do v1[j]:=false;
   s2:=[]; for j:=0 to Big do v2[j]:=false;
   for count:=1 to Reps do begin
      DoIt;
      Zap(s1,v1); Zap(s2,v2)
   end;

   if not error then
      writeln(' PASS...6.7.2.4-6 (CONF159)')
   else
      writeln(' FAIL...6.7.2.4-6 (CONF159)')
end.
