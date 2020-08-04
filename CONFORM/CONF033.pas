{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.3-10, FILE=CONF033, CLASS=CONFORMANCE, LEVEL=0              }
{                                                                    }
{:This program tests that a processor does not implement the 'const' }
{:facility as a simple textual macro.                                }
{                                                                    }
{ There are deviance tests for this elsewhere in the suite.          }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test from Paul Gilmartin.                              }
{   V4.3: An error in the MOD operator can also cause this test to   }
{         fail.                                                      }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF033(output);
const
   m7 = -7;
begin
   if (-7) mod 5 <> 3 then
      writeln(' FAIL...6.3-10, MOD IMPLEMENTATION (CONF033)')
   else if -7 mod 5 <> -2 then
      writeln(' FAIL...6.3-10, UNARY ''-'' PRECEDENCE (CONF033)')
   else if m7 mod 5 <> 3 then
      writeln(' FAIL...6.3-10 (CONF033)')
   else
      writeln(' PASS...6.3-10 (CONF033)')
end.
