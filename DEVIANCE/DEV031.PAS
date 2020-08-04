{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.9-4, FILE=DEV031, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:Nested comments are not permitted in Pascal.                       }
{                                                                    }
{ This program differs from test 6.1.8-4 by using different          }
{ delimiters for the innermost 'nested comment'.  The program is     }
{ still incorrect and should be rejected by processors.              }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Comment changed.                                           }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV031(output);
begin
   { writeln(' RAN 1');
   (* writeln(' RAN 2'); *)
   writeln(' RAN 3');}
   writeln(' DEVIATES...6.1.9-4 (DEV031)')
end.
