{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.8-2, FILE=CONF018, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This program checks that an open comment delimiter can appear in a }
{:comment.                                                           }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment revised due to change in DP7185.                   }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF018(output);
begin
   { Is a { permitted in a comment. }
   writeln(' PASS...6.1.8-2 (CONF018)')
end.
