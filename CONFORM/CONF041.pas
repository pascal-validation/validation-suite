{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.2.2-7, FILE=CONF041, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This test explores the use of type-char as an enumeration-type.    }
{                                                                    }
{ The Standard specifies that the ord of the first character in the  }
{ char type shall be zero, and that the rest shall have consecutive  }
{ ordinal values.  However, there is no easy way to find the last    }
{ character in the set, and the function MaxChar is an approx        }
{ MaxChar is an approximation to this.  It finds the character       }
{ having the largest ordinal value from the set of known Pascal      }
{ characters. Hence the test may be incomplete but should work on    }
{ all implementations.                                               }
{                                                                    }
{ Modification History :                                             }
{   V4.0: MaxChar function corrected.                                }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF041(output);
type
   atype=array[char]of char;
   natural=0..maxint;
var
   ordi:natural;
   maxcharval:char;
   a,b:atype;
   ch:char;
   ok:boolean;

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
   end {MaxChar};

begin
   ok := true;
   maxcharval := MaxChar;
   for ordi:=0 to ord(maxcharval) do
      a[chr(ordi)]:=chr(ordi);
   for ch := chr (0) to maxcharval do
      b [ch] := a [ch];
   for ch:=chr(0) to maxcharval do
      if b[ch] <> ch then ok:=false;
   for ordi:=1 to ord(maxcharval) do
      if (pred(chr(ordi)) <> chr(pred(ordi))) or
      (succ(chr(pred(ordi))) <> chr(ordi)) then
         ok := false;
   if ok then
      writeln(' PASS...6.4.2.2-7 (CONF041)')
   else
      writeln(' FAIL...6.4.2.2-7 (CONF041)')
end.
