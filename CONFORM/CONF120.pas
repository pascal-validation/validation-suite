{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.2-21, FILE=CONF120, CLASS=CONFORMANCE, LEVEL=0          }
{                                                                    }
{:This test writes a fixed number of characters to a file of char,   }
{:reads back the same number of characters, and then checks that eof }
{:is true.                                                           }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test from Paul Gilmartin.                              }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF120(output);
var
   min,max,ch1,ch2 : char;
   f : file of char;

function MinChar:char;
   { Returns least value in type char [see 6.4.2.2(d)] }
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

begin
   min := minchar;
   max := MaxChar;
   rewrite(f);
   for ch1 := min to max do write(f,ch1);
   reset(f);
   for ch1 := min to max do read(f,ch2);
   if not eof(f) then
      writeln(' FAIL...6.6.5.2-21 (CONF120)')
   else
      writeln(' PASS...6.6.5.2-21 (CONF120)')
end.
