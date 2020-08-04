{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.5-12, FILE=CONF076, CLASS=CONFORMANCE, LEVEL=0          }
{                                                                    }
{:This test contains six simultaneous open files.                    }
{                                                                    }
{ The Standard permits any number of file variables; this test       }
{ writes to six files simultaneously to check that any limit imposed }
{ by an implementation is not ridiculously small.                    }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF076(output);
const
   Limit=47;
type
   FourCycle = (P,Q,R,S);
   FileKind = file of FourCycle;
var
   a0,a1,a2,a3,a4,a5 : FileKind;
   result : (pass,fail);
   a : FourCycle;
   i : 1..Limit;

   function cycle(z:FourCycle):FourCycle;
   begin if z=S then cycle:=p else cycle:=succ(z) end;

begin
   result:=pass;  { anticipatory }

   { Write six files }
   rewrite(a0); rewrite(a1);
   rewrite(a2); rewrite(a3);
   rewrite(a4); rewrite(a5);
   a:=P;
   for i:=1 to Limit do begin
      case i mod 6 of
         0: begin a0^:=a; put(a0) end;
         1: begin a1^:=a; put(a1) end;
         2: begin a2^:=a; put(a2) end;
         3: begin a3^:=a; put(a3) end;
         4: begin a4^:=a; put(a4) end;
         5: begin a5^:=a; put(a5) end
      end;
      a:=cycle(a)
   end;

   { Check by reading back }
   reset(a0); reset(a1);
   reset(a2); reset(a3);
   reset(a4); reset(a5);
   a:=P;
   for i:=1 to Limit do begin
      case i mod 6 of
         0: begin
               if a0^<>a then result:=fail;
               get(a0)
            end;
         1: begin
               if a1^<>a then result:=fail;
               get(a1)
            end;
         2: begin
               if a2^<>a then result:=fail;
               get(a2)
            end;
         3: begin
               if a3^<>a then result:=fail;
               get(a3)
            end;
         4: begin
               if a4^<>a then result:=fail;
               get(a4)
            end;
         5: begin
               if a5^<>a then result:=fail;
               get(a5)
            end
      end;
      a:=cycle(a)
   end;

   if not(eof(a0) and eof(a1) and eof(a2) and
          eof(a3) and eof(a4) and eof(a5)) then result:=fail;
   if result=pass then
      writeln(' PASS...6.4.3.5-12 (CONF076)')
   else
      writeln(' FAIL...6.4.3.5-12 (CONF076)')
end.
