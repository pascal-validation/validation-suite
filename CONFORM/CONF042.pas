{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.2.2-8, FILE=CONF042, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This test checks that ord of an integer is the integer itself.     }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF042(output);
var
   result:(pass,fail);
   i:integer;
begin
   result:=pass;
   for i:=-100 to +100 do
      if ord(i) <> i then result:=fail;
   if (ord(-0) <> 0) or (ord(maxint) <> maxint) or
      (ord(-maxint) <> -maxint) then result := fail;
   if result=pass then
      writeln(' PASS...6.4.2.2-8 (CONF042)')
   else
      writeln(' FAIL...6.4.2.2-8 (CONF042)')
end.
