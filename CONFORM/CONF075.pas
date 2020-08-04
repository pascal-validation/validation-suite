{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.5-11, FILE=CONF075, CLASS=CONFORMANCE, LEVEL=0          }
{                                                                    }
{:This test checks that two local files with similar identifiers are }
{:correctly distinguished.                                           }
{                                                                    }
{ If local files are created with an external catalogue file name    }
{ solely derived from their identifier, then it is possible that     }
{ long identifiers may be truncated, yielding pseudonym problems, or }
{ that files in different scopes may have synonymous names. If       }
{ implementations require external names then it is their            }
{ responsibility to ensure distinctness to conform to the Standard.  }
{                                                                    }
{ Modification History :                                             }
{   V4.0: Test altered since all the created files were identical.   }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF075(output);
const
   Limit=111;
type
   FileKind = file of integer;
var
   TryThisParticularFile,
   TryThisParticularFyle : FileKind;
   j : 0..maxint;
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

   procedure Create(var g:FileKind;seed:integer);
   var
      i : 1..Limit;
   begin
      rewrite(g);
      ix:=seed;
      for i:=1 to Limit do
         begin
         g^:=random; put(g);
         end;
   end;

   procedure Check(var g:FileKind;seed:integer);

   begin
      reset(g); j:=0;
      ix:=seed;
      while not eof(g) do
         begin
         if g^ <> random then
            result := fail;
         get(g);  j := succ(j)
         end;
      if j<>Limit then result:=fail
   end;

   procedure Nested;
   var
      TryThisParticularFile:FileKind;
   begin
      Create(TryThisParticularFile,2);
      Check(TryThisParticularFile,2);
   end;


begin
   result:=pass;  { anticipatory }
   Create(TryThisParticularFile,1);  { first one }
   Nested;                        { second, same spelling }
   Create(TryThisParticularFyle,3); { third, similar spelling }
   Check(TryThisParticularFile,1);
   Check(TryThisParticularFyle,3);
   if result=pass then
      writeln(' PASS...6.4.3.5-11 (CONF075)')
   else
      writeln(' FAIL...6.4.3.5-11 (CONF075)')
end.
