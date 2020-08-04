{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.1-3, FILE=CONF003, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This test contains every valid pair of adjacent lexical units.     }
{                                                                    }
{ A Pascal program consists of a sequence of lexical units. A parser }
{ for Pascal may use a table of adjacent lexical units for           }
{ recognition and error recovery. Hence the Pascal test suite should }
{ contain every valid pair of adjacent units. Some, such as div      }
{ 'string' are syntactically valid but semantically invalid. Many,   }
{ such as 'to nil' are very rare in ordinary programs.               }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V4.2: In procedure 'pcondstats', local variable 'i1'             }
{         initialised.                                               }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF003(output);
type
   pint = ^integer;
   pbool = ^boolean;
   pchar = ^char;
   rec =  record
             pt: ^pint;
              case boolean of
                 true: (
            case boolean of
               true: (ch: pchar);
               false: ( )
               );
               false: ()
            end;

   ar = array [ '0' .. '9' ] of packed set of 'A' .. 'Z';
   fl = file of integer;
   st = set of '0' .. '9';
   pkt = packed file of (on, off);

var
   vpint: pint;
   vrr: array[0..1] of array [ 'A' .. 'A' ] of 1 .. 2;
   filv: file of integer;
   stv: set of 0 .. 9;
   pkv : packed array [1..2] of char;
   pkr : packed record end;
   recv : record
            case b: boolean of
               true: (int1: +1 .. 3);
               false: (int2: -1 .. -1)
          end;
   ch: 'A' .. 'Z';
   vbool: array [boolean] of integer;
   stbool: set of boolean;
   verc: rec;
   vrbool: pbool;
   ptr: ^rec;
   arrv: array [ boolean ] of rec;
   arrp: array [ boolean ] of ^ integer;
   ptar: ^ar;
   arrbool: array [ 'A' .. 'A' ] of boolean;
   arrrec: array [ 1 .. 1 ] of record x: integer end;
   arrstv: array [ boolean ] of set of '0' .. '9';
   arrfil: array [ boolean ] of file of char;

procedure labls( var i: integer; j: integer);
   label
      1, 2, 3, 4, 5, 6, 7, 8, 9;
   const
      ii = -1;
   var
      k: ii .. maxint;
   begin
   1: i := + 1;
   2: ; 3: begin
         4: if ((+i+0) <> +(1)) then
               5: goto 1
            else
               6: case 1 = vpint^ of
                  true: while false > not ( not true) do
                        7: for k := 1 to 2 do
                           8: repeat
                              9: with pkr do;
                              until true or not false;
                  false: goto 6;
                  end;
        end;
   end;

function f(function ff(b: boolean): boolean): boolean;
   forward;

procedure frloops;
   const
      ci = 1;
   var
      i: integer;
      ch: char;
      bool: boolean;
   begin
   for i := vpint^ to +(1) do if false then;
   repeat
      for i := vpint^ downto +1 do
   until true;
   for ch := '0' to '9' do;
   for ch := '0' downto '9' do;
   for bool := not true to not false do;
   for bool := (true) and true downto not false do;
   for i := -1 downto -1 do;
   for i := (1) downto 1 do;
   for bool := true and (false) < true downto (false) do;
   for bool := vpint = nil to nil = vpint do;
   for bool := false in [false] to [] = [1] do;
   for bool := vpint = nil downto nil = vpint do;
   for bool := false in [false] downto [] = [1] do;
   for i := vbool[ci div 1 > 1] downto ci do;
   for i := (1) to -1 do
      begin vpint := nil end
   end;

function f;
   begin
   f := ff( not true);
   end;

procedure prept(procedure p );
   label
      2;
   var
      i: integer;
   begin
   repeat until 2 <> (1) + 0;
   repeat ; until true;
   repeat
      repeat
         for i := -1 to 2 do;
      until 1 <= + 2;
   until 0 >= -1;
   repeat
      begin;
      repeat
         if 1 <> -1 then;
      until true <> not true
      end
   until vrr[0,('A')] < +9;
   stv := [1];
   repeat
      with pkr do;
   until (1) in stv;
   repeat
      goto 2;
   2: until 1 < vpint^ + 1;
   repeat
      while vpint^ <> 1 do;
   until (1 <= (2)) or true;
   repeat
      case -1 of
      -1: ;
      end;
   until vpint^ = +1;
   repeat
      i := 1
   until vpint^ < -(-2);
   p
   end;

procedure pcondstats( var i: integer);
   label
      1, 2, 3, 4;
   var
      i1: 1 .. +2;
   begin
   goto 1; ;
   1: if 'A' <> 'Z' then else goto 1;
   if -1 > -2 then else;
   if true then
      if (nil = vpint) then else
   else;
   begin if [] >= (stv) then goto 1 else end;
   stv := [1];
   while [] = (stv) do
      repeat
         begin begin end end;
      until +1 <= -(-2);
   i1 := 1;
   if not true then
      if ('A' <= 'Z') or ([i1..3] <= stv) then
         begin with pkr do end
      else
         begin end;
   while 1 + vpint^ > maxint - vbool[true] do;
   repeat
      vrbool^ := vbool[false] <> vbool[false]
   until [] >= [];
   if +1 = 1 then
      for i1 := 1 to ord(2) do
         vpint^ := vpint^
   else
      if false then
         repeat vpint := vpint until vpint <> nil
      else
         for i1 := 1 to 2 do
            case +i of
               1,
              +2:
            end;
   if nil <> vpint then
      case i of
         +1,
         -0: ;
         +2: ;
         -3: ;
      end
   else
      case (ch) of
         'A': ;
         'Z': ;
      end;
   begin
      case 'A' of 'A': end
   end;
   case vbool[false] in [1] of false, true: end;
   case nil = vpint of true, false: end;
   case not true of false: end;
   case [1] = [1] of true: end;
   while nil = vpint do;
   repeat until nil <> vpint;
   repeat
      if true then else
   until true;
   case vpint = nil of
      false, true:
   end;
   if true in [ false .. [0] = [] ] then
   4: else;
   if (vpint) = nil then
      vrbool^ := ((1) div 1) <= vbool[true]
   else;
   if 1*1/1 = vpint^ then
      i1 := 1
   else
      repeat
         vpint^ := 1 + vpint^
      until 1 div vpint^ <= 2;
   repeat
      vrbool^ := vpint = nil
   until not false;
   repeat
      i1 := (1) mod (2)
   until -i1 = -1;
   if i1 < (i1 * 1 mod 1) then
      with pkr do
      for i1 := 1 to (2) do
         while (1) * i1 - 1 <= vpint^ do
            with pkr do
               ch := 'A'
   else
      while i1 mod i1 > + i1/1 do ;
   if true then
      while +vpint^ >= vpint^+1 do
   else
      with pkr do ;
   with pkr do
      goto 2;
   2: begin while -i1 - 1 div 1 >= + 1 do end;
   goto 3;
   repeat  until vpint^ * vpint^/ vpint^ >= 0 ;
   3:
   if 'A' < 'Z' then
   end;

function g( b: boolean): boolean;
   begin
   g := b
   end;

begin
vpint := nil;
new(vpint);
vpint^ := (1);
vpint^ := vpint^;
new(ptar);
ptar^['0'] := ['A'];
vrr[+1-1]['A'] := +1;
vrr[-2+3,'A'] := 1;
stv := [] + [(0)..(1)];
begin stv := [] - [] end;
vpint^ := trunc(vrr[0,'A']/1);
stbool := [not true] * [true < not false ];
stbool := [stbool <> []];
vbool[ (1<2) >= not ( 1 in [vpint^ .. 1] ) ] := 1 div (1);
stbool := [stbool <= [ (true) > (true) ]];
stbool := [true in [true] .. not true ];
stbool := [vpint = nil .. nil = vpint ];
begin vbool[(vpint = nil)] := vpint^ end;
begin vpint^ := trunc((1)/(1) - 1) + 1 end;
while not true and not true do;
while ('A' = 'Z') do;
vpint^ := (vpint^) * ( 1 mod (1) ) + 1;
recv.b := nil = vpint;
recv.b := false <= not true;
new(vrbool);
vrbool^ := true;
vrbool^ := vrbool^ and vrbool^ or true;
arrbool['A'] := true;
new(arrv[true].pt);
new(arrv[true].pt^);
arrv[true].pt^^ := vpint^ - 1;
new(arrp[[1] = [1]]);
arrp[nil <> vpint]^ := vbool[true] div vbool[true] mod 1;
labls(vbool[vpint^ in []], vpint^);
repeat
   ch := 'A'
until 'A' = 'A';
vrbool^ := (vbool[true] > 1) or (false = not true);
while vpint = nil do
   ;
if stv = [] then;
if false then
   begin
   writeln( vpint^, 'A', vpint^:1);
   writeln( vbool[true] in [1]: (6) - 1);
   writeln( (1), not true, vpint = nil, [0] = [1]);
   end;
new(ptr);
ptr^.ch := nil;
new(verc.ch);
begin verc.ch^ := 'A' end;
arrbool[verc.ch^] := arrbool['A'] and arrbool['A'] or false;
new(verc.pt);
new(verc.pt^);
verc.pt^^ := vpint^ div 1;
vbool[0 in ([]) ] := vpint^ mod 1;
while 'A' > 'Z' do;
prept(frloops);
pcondstats(vpint^);
if 'Z' >= 'A' then
   vrbool^ := f(g);
writeln(' PASS...6.1.1-3 (CONF003)')
end.
