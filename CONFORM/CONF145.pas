{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.1-2, FILE=CONF145, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This test checks that the member designator x..y, where x>y,       }
{:denotes no members.                                                }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Constant null set added.                                   }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF145(output);
var
   x,y :integer;
begin
   x:=2;
   y:=1;
   if ([x..y]=[]) and ([127..0]=[]) then
      writeln(' PASS...6.7.1-2 (CONF145)')
   else
      writeln(' FAIL...6.7.1-2 (CONF145)')
end.
