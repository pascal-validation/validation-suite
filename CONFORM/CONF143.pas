{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.6.5-10, FILE=CONF143, CLASS=CONFORMANCE, LEVEL=0          }
{                                                                    }
{:This test checks that the eof function continues to yield true     }
{:after the end of the file has been reached.                        }
{                                                                    }
{ Even though the eof function has been called and yielded true, the }
{ system is not entitled to fault any subsequent call to eof. This   }
{ test was written as a result of a bug found in several             }
{ implementations.                                                   }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF143(output);
type
   filekind = file of integer;
var
   f : filekind;
   i,n : integer;
   ok : boolean;
begin
   rewrite(f);
   for i := 1 to 10 do write(f,i);
   reset(f);
   for i := 1 to 10 do read(f,n);
   ok := true;
   for i := 1 to 10 do
      ok := ok and eof(f);
   if ok then
      writeln(' PASS...6.6.6.5-10 (CONF143)')
   else
      writeln(' FAIL...6.6.6.5-10 (CONF143)')
end.
