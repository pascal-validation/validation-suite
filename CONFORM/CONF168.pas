{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.2.4-1, FILE=CONF168, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This test checks that non-local goto-statements are allowed.       }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Write for PASS shortened.                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF168(output);
label 1;
var
   b:boolean;
procedure q;
begin
   b:=true;
   goto 1
end;   {of q}

begin   {main}
   q;
   b:=false;
1: if b then
      writeln(' PASS...6.8.2.4-1 (CONF168)')
   else
      writeln(' FAIL...6.8.2.4-1 (CONF168)')
end.
