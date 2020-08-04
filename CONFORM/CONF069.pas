{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.5-5, FILE=CONF069, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This test checks that non-text local files are processed           }
{:correctly.                                                         }
{                                                                    }
{ This test explores the reading and writing of files of type other  }
{ than text (or file of char) to establish that they are             }
{ implemented. Test patterns are written and read back in a series   }
{ of test procedures. This test involves unstructured types.         }
{                                                                    }
{ Modification History :                                             }
{   V4.0: Comment corrected.                                         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF069(output);
var
   ix,iy,iz : integer;
   result : (pass,fail);

   function random : real;
   { For full description of operation see commentary of
     test 6.6.6.2-6. }
   var
      ni,k,r:integer;
      x:real;
   begin
      k:=ix div 177; r:=ix-k*177;
      ni:=-2*k+171*r;
      if ni<0 then ix:=ni+30269 else ix:=ni;
      k:=ix div 176; r:=ix-k*176;
      ni:=-35*k + r*172;
      if ni<0 then ix:=ni+30307 else ix:=ni;
      k:=ix div 178; r:=ix-k*178;
      ni:=-63*k + r*170;
      if ni<0 then ix:=ni+30323 else ix:=ni;
      x:=ix/30269.0 + iy/30307.0 + iz/30323.0;
      random:=x-trunc(x)
   end;

   procedure Booleans;
   const
      Limit=100;
   var
      f : file of Boolean;
      a : Boolean;
      i : 1..Limit;
      j : 0..maxint;
   begin
      rewrite(f); a:=false;
      for i:=1 to Limit do begin
         f^:=a; put(f); a:=not(a)
      end;
      reset(f); j:=0; a:=false;
      while not eof(f) do begin
         if f^<>a then result:=fail;
         j:=succ(j); get(f); a:=not(a)
      end;
      if j<>Limit then result:=fail
   end;

   procedure EnumeratedTypes;
   const
      Limit=100;
   type
      FourCycle = (P,Q,R,S);
   var
      f : file of FourCycle;
      a : FourCycle;
      i : 1..Limit;
      j : 0..maxint;

      function cycle(z:FourCycle):FourCycle;
      begin if z=S then cycle:=P else cycle:=succ(z) end;

   begin
      rewrite(f); a:=P;
      for i:=1 to Limit do begin
         f^:=a; put(f); a:=cycle(a)
      end;
      reset(f); j:=0; a:=P;
      while not eof(f) do begin
         if f^<>a then result:=fail;
         j:=succ(j); get(f); a:=cycle(a)
      end;
      if j<>Limit then result:=fail
   end;

   procedure Integers;
   const
      Limit=99;
   var
      f : file of integer;
      a : integer;
      i : 1..Limit;
      j : 0..maxint;

      function next:integer;
      begin next:=trunc(((2*random)-1)*maxint) end;

   begin
      rewrite(f); ix:=1; iy:=10001; iz:=4987; a:=next;
      for i:=1 to Limit do begin
         f^:=a; put(f); a:=next
      end;
      reset(f); j:=0;
      ix:=1; iy:=10001; iz:=4987; a:=next;
      while not eof(f) do begin
         if f^<>a then result:=fail;
         j:=succ(j); get(f); a:=next
      end;
      if j<>Limit then result:=fail
   end;

   procedure Reals;
   const
      Limit=113;
   var
      f : file of real;
      a : real;
      i : 1..Limit;
      j : 0..maxint;

      function next:real;
      begin next:=random end;

   begin
      rewrite(f); ix:=1; iy:=10001; iz:=4987; a:=next;
      for i:=1 to Limit do begin
         f^:=a; put(f); a:=next
      end;
      reset(f); j:=0;
      ix:=1; iy:=10001; iz:=4987; a:=next;
      while not eof(f) do begin
         if f^<>a then result:=fail;
         j:=succ(j); get(f); a:=next
      end;
      if j<>Limit then result:=fail
   end;

   procedure SubrangeOfInteger;
   const
      One  =1;
      Prime=13;
      Limit=97;
   type
      Primal = One..Prime;
   var
      f : file of Primal;
      a : Primal;
      i : 1..Limit;
      j : 0..maxint;

      function cycle(z:Primal):Primal;
      begin if z=One then cycle:=Prime else cycle:=pred(z) end;

   begin
      rewrite(f); a:=One;
      for i:=1 to Limit do begin
         f^:=a; put(f); a:=cycle(a)
      end;
      reset(f); j:=0; a:=One;
      while not eof(f) do begin
         if f^<>a then result:=fail;
         j:=succ(j); get(f); a:=cycle(a)
      end;
      if j<>Limit then result:=fail
   end;

begin
   result:=pass;  { anticipatory }
   Booleans;
   Integers;
   Reals;
   EnumeratedTypes;
   SubrangeOfInteger;
   if result=pass then
      writeln(' PASS...6.4.3.5-5 (CONF069)')
   else
      writeln(' FAIL...6.4.3.5-5 (CONF069)')
end.

