{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9.3-2, FILE=IMDEFB47, CLASS=IMPLEMENTATIONDEFINEDBEHAVIOUR, }
{ LEVEL=0                                                            }
{                                                                    }
{:This test checks that data written appears on the output file      }
{:regardless of the omission of a line separator.                    }
{                                                                    }
{ The common error is to buffer output and fail to flush the buffers }
{ at end of job.                                                     }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Deleted underscores from output string. Test renumbered    }
{         (was 6.9.4-10) due to change in DP7185. Write revised.     }
{   V4.2: Shortform message changed and included in output.          }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program IMDEFB47(output);
begin
   writeln(' OUTPUT FROM TEST...6.9.3-2');
   writeln(' Data written appears on the output file regardless',
           ' of the omission of a line separator');
   writeln(' IMPLEMENTATION DEFINED BEHAVIOUR...6.9.3-2 (IMDEFB47)')
end.
