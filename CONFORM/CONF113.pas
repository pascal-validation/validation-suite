{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.4-2, FILE=CONF113, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This program tests the environment of procedural parameters.       }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Corrected parameters of p and q. Writes for FAIL           }
{         elaborated.                                                }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF113(output);
var
   globalone, globaltwo : integer;

procedure p(procedure f(procedure a;procedure b);procedure g);
   var
      localtop : integer;
   procedure r;
      begin
         if globalone=1 then
         begin
            if (globaltwo<>2) or (localtop<>1) then
               writeln(' FAIL...6.6.3.4-2 (CONF113),',
                       ' PROCEDURAL PARAMETERS (1)')
         end
         else
            if globalone=2 then
            begin
               if (globaltwo<>2) or (localtop<>2) then

                  writeln(' FAIL...6.6.3.4-2 (CONF113),',
                          ' PROCEDURAL PARAMETERS (2)')
               else
                  writeln(' PASS...6.6.3.4-2 (CONF113)')
            end
            else
               writeln(' FAIL...6.6.3.4-2 (CONF113),',
                       ' PROCEDURAL PARAMETERS (3)');
         globalone:=globalone+1
      end;     { of r }
   begin    { of p }
      globaltwo:=globaltwo+1;
      localtop:=globaltwo;
      if globaltwo=1 then
         p(f,r)

      else
         f(g,r)
   end;     { of p }
procedure q(procedure f;procedure g);
   begin
      f;
      g
   end;
procedure dummy;
begin
   writeln(' FAIL...6.6.3.4-2, PROCEDURAL PARAMETERS (4) (CONF113)')
end;

begin
   globalone:=1;

   globaltwo:=0;
   p(q,dummy)
end.
