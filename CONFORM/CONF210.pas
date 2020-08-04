{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.10-5, FILE=CONF210, CLASS=CONFORMANCE, LEVEL=0              }
{                                                                    }
{:This test checks that a comment is permitted between the final end }
{:and the '.'.                                                       }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF210(output);
begin
   writeln(' PASS...6.10-5 (CONF210)')
end{comment here, next test without comments}.

