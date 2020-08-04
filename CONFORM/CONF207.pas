{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9.5-1, FILE=CONF207, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This program checks that the procedure page is implemented.        }
{                                                                    }
{ This conformance test is unable to determine whether the processor }
{  passes or fails - the user must check that a page has been        }
{ generated.                                                         }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Test renumbered (was 6.9.6-1) to correspond with DP7185.   }
{         First writeln changed to a write so that it can be         }
{         determined, if desired, whether page performed an          }
{         implicit writeln as it should.                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF207(output);
begin
   write(' PAGE GENERATION TEST');
   page(output);
   writeln(' IF THIS LINE IS PRINTED ON THE TOP OF A NEW PAGE');
   writeln(' THEN PASS...6.9.5-1 (CONF207)');
   writeln(' ELSE FAIL...6.9.5-1 (CONF207)')
end.
