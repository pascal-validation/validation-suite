{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.8-1, FILE=CONF017, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This test checks that a comment may be used as a token separator.  }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment revised.                                           }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program{ Can this be here. }CONF017(output){ Or here. };
var
   i{ control variable }:{ colon }integer{ type };
begin
   for{ This is a FOR loop }i{ control variable }:={ assignment }
      1{ initial }to{ STEP 1 UNTIL }1{ final }do{ GO }
         writeln{ write statement }(' PASS...6.1.8-1 (CONF017)')
end.

