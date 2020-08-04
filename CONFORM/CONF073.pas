{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.5-9, FILE=CONF073, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This test checks that packed non-text local files are processed    }
{:correctly.                                                         }
{                                                                    }
{ This test explores the reading and writing of files of type other  }
{ than text (or file of char) to establish that they are             }
{ implemented. Test patterns are written and read back in a series   }
{ of test procedures. This test involves packed structured types.    }
{                                                                    }
{ Modification History :                                             }
{   V4.0: Comment corrected.                                         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF073(output);
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

   procedure Sets;
   const
      Limit=71;
   type
      Pattern=packed set of 0..15;
   var
      f : packed file of Pattern;
      a : Pattern;
      i : 1..Limit;
      j : 0..maxint;

      procedure next(var b:Pattern);
      begin
         b:=b-[random mod 16];
         b:=b+[random mod 16]
      end;

   begin
      rewrite(f);
      ix:=1; a:=[];
      for i:=1 to Limit do begin
         f^:=a; put(f); next(a)
      end;
      reset(f); j:=0;
      ix:=1; a:=[];
      while not eof(f) do begin
         if f^<>a then result:=fail;
         j:=succ(j); get(f); next(a)
      end;
      if j<>Limit then result:=fail
   end;

   procedure Arrays;
   const
      Limit=83;
   type
      Size = 0..23;
      Table= packed array[Size] of integer;
   var
      f : packed file of Table;
      a : Table;
      i : 1..Limit;
      j : 0..maxint;
      k : Size;

      procedure first;
      var k:Size;
      begin
         for k:=0 to 23 do a[k]:=0
      end;

      procedure next;
      var k:Size;
          r:real;
      begin
         r:=random mod 24;
         k:=trunc(r);
         a[k]:=random
      end;

      function notsame:boolean;
      var k:Size; hypothesis:boolean;
      begin
         hypothesis:=false;
         for k:=0 to 23 do
            if f^[k] <> a[k] then
               hypothesis:=true;
         notsame:=hypothesis
      end;

   begin
      rewrite(f);
      ix:=1; first;
      for i:=1 to Limit do begin
         f^:=a; put(f); next
      end;
      reset(f); j:=0;
      ix:=1; first;
      while not eof(f) do begin
         if notsame then result:=fail;
         j:=succ(j); get(f); next
      end;
      if j<>Limit then result:=fail
   end;

   procedure Products;
   const
      Limit=127;
   type
      Data = packed record v: integer; w:boolean end;
   var
      f : packed file of Data;
      a : Data;
      i : 1..Limit;
      j : 0..maxint;

      procedure first;
      begin
         a.v:=0; a.w:=false
      end;

      procedure next;
      begin
         a.v:=random; a.w:=random>15000
      end;

      function notsame:boolean;
      begin
         notsame:=(a.v<>f^.v) or (a.w<>f^.w)
      end;

   begin
      rewrite(f);
      ix:=1; first;
      for i:=1 to Limit do begin
         f^:=a; put(f); next
      end;
      reset(f); j:=0;
      ix:=1; first;
      while not eof(f) do begin
         if notsame then result:=fail;
         j:=succ(j); get(f); next
      end;
      if j<>Limit then result:=fail
   end;

   procedure  Unions;
   const
      Limit=79;
   type
      Three = (Nul,One,Two);
      Data = packed record
              case p:Three of
                 Two: (q,r:integer);
                 One: (s:boolean);
                 Nul: ()
             end;
   var
      f : packed file of Data;
      a : Data;
      i : 1..Limit;
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

         end;
      end;

      function notsame:boolean;
      begin
         if a.p <> f^.p then
            notsame:=true
         else begin
            case a.p of
               Nul: notsame:=false;
               One: notsame:=a.s<>f^.s;
               Two: notsame:=(a.q<>f^.q)or(f^.r<>a.r)

            end;
         end;
      end;

   begin
      rewrite(f);
      ix:=1; first;
      for i:=1 to Limit do begin
         f^:=a; put(f); next
      end;
      reset(f); j:=0;
      ix:=1; first;
      while not eof(f) do begin
         if notsame then result:=fail;
         j:=succ(j); get(f); next
      end;
      if j<>Limit then result:=fail
   end;

begin
   result:=pass;  { anticipatory }
   Sets;
   Arrays;
   Products;
   Unions;
   if result=pass then
      writeln(' PASS...6.4.3.5-9 (CONF073)')
   else
      writeln(' FAIL...6.4.3.5-9 (CONF073)')
end.
