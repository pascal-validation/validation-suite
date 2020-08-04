{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.5-6, FILE=CONF084, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This test checks that if two types are declared identical, they    }
{:inherit all properties in common, including operators and special  }
{:attributes.                                                        }
{                                                                    }
{ This is checked by an analogue of type boolean.                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment and writes revised. Was previously 6.4.5-12.       }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF084(output);
const
   on=true;
   off=false;
type
   logical=boolean;
var
   test:integer;
   b1,b2:boolean;
   l1,l2:logical;
begin
   test:=0;
   b1:=true;   b2:=off;
   l1:=true;   l2:=off;
   if l2 then test:=test+1;
   l2:=b2;
   if b1=b2 then test:=test+1;
   b2:=l2;
   if b2 or l2 then test:=test+1;
   if test=0 then
      writeln(' PASS...6.4.5-6 (CONF084)')
   else
      writeln(' FAIL...6.4.5-6 (CONF084)')
end.
