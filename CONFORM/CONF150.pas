{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.1-10, FILE=CONF150, CLASS=CONFORMANCE, LEVEL=0            }
{                                                                    }
{:This test checks that the set-constructor can denote all values    }
{:allowed by the canonic set-type to which it belongs.               }
{                                                                    }
{ This test is intended to trap implementations which 'fold' their   }
{ character set for the set of char implementation.  Implementations }
{ whose 'set of char' is incomplete also fail.                       }
{                                                                    }
{ Modification History :                                             }
{   V4.0: MaxChar function corrected.                                }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF150(output);
type
   CharSet     = set of char;
var
   Cseta,Csetb : CharSet;
   cha,chb     : char;
   error       : boolean;

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
   error:=false;
   { Try all pair combinations }
   for cha:=MinChar to pred(MaxChar) do begin
      for chb:=succ(cha) to MaxChar do begin
         Cseta:=[cha]; Csetb:=[chb];
         error:=error or (cha in Csetb) or (chb in Cseta) or
                    not ((cha in Cseta) and (chb in Csetb))
      end;
   end;
   if not error then
      writeln(' PASS...6.7.1-10 (CONF150)')
   else
      writeln(' FAIL...6.7.1-10 (CONF150)')
end.
