{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.9-1, FILE=CONF019, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This program checks that the two equivalent forms of comment       }
{:delimiters are implemented correctly.                              }
{                                                                    }
{ It contains four comments with all the permutations of delimiters. }
{ Processors are not allowed to ignore one form of comment delimiter }
{ unless they do not have the appropriate characters in their set.   }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Test revised in line with new treatment in DP7185, and     }
{         moved to appropriate section (was test 6.1.8-3).           }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF019(output);
var
   i : 0..4;
begin
   i := 0;
   { This is a standard comment }
   i := i+1;
   (* This is an alternative form *)
   i := i+1;
   { This, though correct, is a misleading practice *)
   i := i+1;
   (* These equivalences allow for greater portability }
   i := i+1;
   if (i=4) then
      writeln(' PASS...6.1.9-1 (CONF019)')
   else
      writeln(' FAIL...6.1.9-1 (CONF019)')
end.
