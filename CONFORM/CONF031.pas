{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.2.2-7, FILE=CONF031, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This program hides part of a type while leaving other parts        }
{:accessible.                                                        }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment revised and writes rewritten. Was previously       }
{         6.2.2-10.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF031(output);
type
   colour=(red,amber,green);
var
   c:colour;

procedure nested;
type
   colour=(purple,red,blue);
var
   paint:colour;
begin
   c:=green;
   paint:=red;
   c:=pred(amber);
   if (ord(c)<>0) or (ord(paint)<>1) then
      writeln(' FAIL...6.2.2-7 (CONF031)')
end;

begin
   nested;
   if (c<> red) then
      writeln(' FAIL...6.2.2-7 (CONF031)')
   else
      writeln(' PASS...6.2.2-7 (CONF031)')
end.
