{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.2.2-1, FILE=CONF025, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This program tests the scope conformance of the processor for      }
{:identifiers.                                                       }
{                                                                    }
{ The Pascal Standard permits redefinition of an identifier by a     }
{ further defining point in a region (eg. procedure block) enclosed  }
{ by the first scope. This second region (and all regions enclosed   }
{ by it) are excluded from the scope of the defining point of the    }
{ first region.                                                      }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment changed - 'identifier' not 'user name'.            }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF025(output);
const
   range = 10;
var
   i : integer;
   pass : boolean;
procedure redefine;
const
   range = -10;
var
   i : integer;
begin
   i:=range
end;

begin
   i:=1;
   pass:=false;
   redefine;
   if range=-10 then
      writeln(' FAIL...6.2.2-1 (CONF025)')
   else
      pass:=true;
   if i=-10 then
      writeln(' FAIL...6.2.2-1 (CONF025)')
   else
      if pass then
         writeln(' PASS...6.2.2-1 (CONF025)')
end.
