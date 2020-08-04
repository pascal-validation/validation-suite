{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.1-8, FILE=CONF148, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This test checks that the set-constructor can denote all values    }
{:allowed by the canonic set-type to which it belongs.               }
{                                                                    }
{ This test employs sets of types which are not subranges.           }
{                                                                    }
{ Modification History :                                             }
{   V4.0: MaxChar function corrected.                                }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF148(output);
type
   ET       = (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P);
   esetType = set of ET;
   erayType = array[ET] of boolean;
   csetType = set of char;
   crayType = array[char] of boolean;
   bsetType = set of Boolean;
   brayType = array[boolean] of boolean;
var
   Ev, Eadd   : ET;
   Cv, Cadd   : char;
   Bv, Badd   : boolean;
   Eset : esetType;
   Eray : erayType;
   Cset : csetType;
   Cray : crayType;
   Bset : bsetType;
   Bray : brayType;
   Eended, Cended, Bended, error : boolean;

function MinChar:char;
{Returns least value in type char [see 6.4.2.2(d)]}
begin MinChar:=chr(0) end;

function MaxChar: char;
   { This function returns the Pascal character having the
     largest ordinal value. Other characters may have a
     larger ordinal value, including perhaps control characters. }
   const
      upper = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789+-*/=<>.,:;^() ''';
      lower = 'abcdefghijklmnopqrstuvwxyz0123456789+-*/=<>.,:;^() ''';
   var
      st: packed array [ 1 .. 52 ] of char;
      max: integer;
      i:   1 .. 52 ;
   begin
      max := 0;
      st := upper;
      for i := 1 to 52 do
         if ord( st[i] ) > max then
            max := ord( st[i] );
      if 'a' <> 'A' then
         begin
         st := lower;
         for i := 1 to 52 do
            if ord( st[i] ) > max then
               max := ord( st[i] );
         end;
      MaxChar := chr(max)
   end {MaxChar} ;

   procedure Echeck; { deliberately tests obfuscated text allowed }
   var i:ET;
   begin
      for i:=A to P do if Eray[i] then begin if not(i in Eset) then
      error:=true end else if (i in Eset) then error:=true
   end;

   procedure Ccheck;
   var i:char;
   begin
      for i:=MinChar to MaxChar do if Cray[i] then begin
      if not(i in Cset) then error:=true end else if(i in Cset)
      then error:=true
   end;

   procedure Bcheck;
   var i:boolean;
   begin
      for i:=false to true do if Bray[i] then begin if not(i in Bset)
      then error:=true end else if (i in Bset) then error:=true
   end;

   procedure Eperm;
   begin
      Eset := Eset + [Eadd];
      Eray[Eadd] := true;
      if Eadd = P then Eended := true
      else Eadd := succ(Eadd)
   end;

   procedure Cperm;
   begin
      Cset := Cset + [Cadd];
      Cray[Cadd] := true;
      if Cadd = MaxChar then Cended := true
      else Cadd := succ(Cadd)
   end;

   procedure Bperm;
   begin
      Bset := Bset + [Badd];
      Bray[Badd] := true;
      if Badd = true then Bended := true
      else Badd := succ(Badd)
   end;

begin { of body of main program }
   error:=false;
   Eended := false; Bended := false; Cended := false;
   Eadd := A;  Cadd := MinChar;  Badd := false;
   Eset:=[]; for Ev:=A to P do Eray[Ev]:=false;
   Echeck;
   while not Eended do
      begin Eperm; Echeck end;

   Cset:=[]; for Cv:=MinChar to MaxChar do Cray[Cv]:=false;
   Ccheck;
   while not Cended do
      begin Cperm; Ccheck end;

   Bset:=[]; for Bv:=false to true do Bray[Bv]:=false;
   Bcheck;
   while not Bended do
      begin Bperm; Bcheck end;

   if not error then
      writeln(' PASS...6.7.1-8 (CONF148)')
   else
      writeln(' FAIL...6.7.1-8 (CONF148)')
end.
