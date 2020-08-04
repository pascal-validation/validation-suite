{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9.1-2, FILE=CONF195, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This test checks that a read of a character variable is equivalent }
{:to correctly positioning the buffer variable.                      }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Program parameter removed.                                 }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF195(output);
var
   f:text;
   a,b,a1,b1:char;
begin
   rewrite(f);
   writeln(f,'ABC');
   reset(f);
   read(f,a);
   read(f,b);
   reset(f);
   a1:=f^; get(f);
   b1:=f^; get(f);
   if(a=a1) and (b=b1) then
      writeln(' PASS...6.9.1-2 (CONF195)')
   else
      writeln(' FAIL...6.9.1-2 (CONF195)')
end.
