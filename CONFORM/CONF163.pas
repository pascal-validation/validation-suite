{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.2.5-11, FILE=CONF163, CLASS=CONFORMANCE, LEVEL=0          }
{                                                                    }
{:This test checks that relational-operators applied to strings      }
{:behave correctly.                                                  }
{                                                                    }
{ String relations are often badly implemented by full word          }
{ comparisons.                                                       }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test from Paul Gilmartin.                              }
{   V4.1: Test rewritten to avoid use of procedural parameters.      }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF163(output);
type
   four = 255..258;
var
   low,same,high : boolean;
   maxcharval,c1,c2 : char;
   switch,success,tries : integer;
   rec1, rec2 : record
                   case four of
                   255: (s255: packed array[1..255] of char);
                   256: (s256: packed array[1..256] of char);
                   257: (s257: packed array[1..257] of char);
                   258: (s258: packed array[1..258] of char);
                end;

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

procedure t255(place:integer);
var
   i : integer;
begin
   rec1.s255[place] := c1;   rec2.s255[place] := c2;
   for i := 1 to place - 1 do
      begin
      rec1.s255[i] := ' ';   rec2.s255[i] := ' '
      end;
   low := rec1.s255 < rec2.s255;
   same := rec1.s255 = rec2.s255;
   high := rec1.s255 > rec2.s255
end;

procedure t256(place:integer);
var
   i : integer;
begin
   rec1.s256[place] := c1;   rec2.s256[place] := c2;
   for i := 1 to place - 1 do
      begin
      rec1.s256[i] := ' ';   rec2.s256[i] := ' '
      end;
   low := rec1.s256 < rec2.s256;
   same := rec1.s256 = rec2.s256;
   high := rec1.s256 > rec2.s256
end;

procedure t257(place:integer);
var
   i : integer;
begin
   rec1.s257[place] := c1;   rec2.s257[place] := c2;
   for i := 1 to place - 1 do
      begin
      rec1.s257[i] := ' ';   rec2.s257[i] := ' '
      end;
   low := rec1.s257 < rec2.s257;
   same := rec1.s257 = rec2.s257;
   high := rec1.s257 > rec2.s257
end;

procedure score;
begin
   tries := tries + 1;
   if (ord(low) + ord(same) + ord(high) = 1) and
      (ord(high) - ord(low) = switch) then
      success := success + 1
   else
      writeln(' FAIL...6.7.2.5-11 (CONF163)')
end;

procedure tryone(n:integer);
var
   i : integer;
begin
   for i := 255 to 258 do
      begin
      rec1.s258[i] := 'A';   rec2.s258[i] := 'Z'
      end;
   case n of
      255: begin t255(255); score; t255(121); score; t255(1); score end;
      256: begin t256(256); score; t256(121); score; t256(1); score end;
      257: begin t257(257); score; t257(121); score; t257(1); score end;
   end;
end;

procedure try3(fc1,fc2:char; fsw:integer);
begin
   c1 := fc1;   c2 := fc2;   switch := fsw;
   tryone(255);
   tryone(256);
   tryone(257)
end;

begin
   maxcharval := MaxChar;
   tries := 0;   success := 0;
   try3(chr(0), chr(0), 0);
   try3(chr(0), maxcharval, -1);
   try3(maxcharval, chr(ord(maxcharval) div 2), 1);
   if success = tries then
      writeln(' PASS...6.7.2.5-11 (CONF163)')
   else
      writeln(' FAIL...6.7.2.5-11 (CONF163)')
end.
