{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.3-6, FILE=CONF111, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This test checks that non-text file parameters are accepted.       }
{                                                                    }
{ This test explores the use of files of type other than text (or    }
{ file of char) as var parameters to establish that they are         }
{ implemented.  Only local files can be tested; whether external     }
{ files can be of these types is implementation-dependent (and may   }
{ be omitted from an implementationtherefore).                       }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF111(output);
var
   ix : integer;
   result : (pass,fail);

   function random : integer;
   var
      ni,k,r:integer;
   begin
      k:=ix div 177; r:=ix-k*177;
      ni:=-2*k+171*r;
      if ni<0 then ix:=ni+30269 else ix:=ni;
      random:=ix

   end;

   procedure Unions;
   const
      Limit=131;
   type
      Three = (Nul,One,Two);
      Data = record
              case p:Three of
                 Two: (q,r:integer);
                 One: (s:boolean);
                 Nul: ()
             end;
      FileKind = file of Data;  {Defined at lex level 2 }
   var

      f : FileKind;
      a : Data;
      j : 0..maxint;

      procedure first;
      begin
         a.p:=Nul
      end;

      procedure next;
      var try:0..2;
      begin
         try:=random mod 3;
         case try of
            0: a.p:=Nul;

            1: begin
                  a.p:=One; a.s:=random>15000
               end;
            2: begin
                  a.p:=Two; a.q:=random; a.r:=random
               end
         end
      end;

      function notsame(var g:FileKind):boolean;
      { Parameter into lex level 3 }
      begin
         if a.p <> g^.p then
            notsame:=true
         else begin

            case a.p of
               Nul: notsame:=false;
               One: notsame:=a.s<>g^.s;
               Two: notsame:=(a.q<>g^.q)or(g^.r<>a.r)
            end
         end
      end;

      procedure Create(var g:FileKind);
      { Parameter into lex level 3 }
      var
         i : 1..Limit;

         procedure Move(var h:FileKind);
         { Parameter into lex level 4 }

         begin
            h^:=a; put(h)
         end;

      begin
         rewrite(g);
         ix:=1; first;
         for i:=1 to Limit do begin
            Move(g); next
         end;
      end;

   begin
      Create(f);
      reset(f); j:=0;

      ix:=1; first;
      while not eof(f) do begin
         if notsame(f) then result:=fail;
         j:=succ(j); get(f); next
      end;
      if j<>Limit then result:=fail
   end;

begin
   result:=pass;  { anticipatory }
   Unions;
   if result=pass then
      writeln(' PASS...6.6.3.3-6 (CONF111)')
   else
      writeln(' FAIL...6.6.3.3-6 (CONF111)')

end.
