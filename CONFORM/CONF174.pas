{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.7-3, FILE=CONF174, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This test checks that an apparently infinite loop is allowed by    }
{:the processor.                                                     }
{                                                                    }
{ Some processors may detect the loop as being infinite.             }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment and writes revised.                                }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF174(output);
label
   100;
const
   eternity = false;
var
   i:integer;
begin
   i:=0;
   repeat
      i:=i+1;
      if (i>50) then
         goto 100
   until eternity;
100:
   writeln(' PASS...6.8.3.7-3 (CONF174)')
end.
