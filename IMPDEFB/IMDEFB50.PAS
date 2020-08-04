{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.10-9, FILE=IMDEFB50, CLASS=IMPLEMENTATIONDEFINEDBEHAVIOUR,  }
{ LEVEL=0                                                            }
{                                                                    }
{:This test determines how the procedure rewrite deals with the      }
{:standard file output.                                              }
{                                                                    }
{ This behaviour of this test is altered by any binding of output to }
{ devices and files that have been established prior to running the  }
{ PVS. In validation, it is normal practice for output to be         }
{ redirected to a file as well as to a terminal, individual          }
{ operating systems differ in how they deal with such redirection -  }
{ so care is needed with this test. The program should be run with   }
{ no redirection to obtain the definitive result for formal          }
{ validation, behaviour in other circumstances should simply be      }
{ reported.                                                          }
{                                                                    }
{ Modification History :                                             }
{   V4.1: New test.                                                  }
{   V4.2: Comment and writes revised.                                }
{   V5.0: Test reclassified from IMPLEMENTATION DEFINED to           }
{         IMPLEMENTATION DEFINED BEHAVIOUR.                          }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program IMDEFB50(output);
begin
   writeln(' OUTPUT FROM TEST...6.10-9');
   writeln(' Rewrite does not overwrite previous output');
   rewrite(output);
   writeln(' Rewrite does overwrite previous output');
   writeln(' IMPLEMENTATION DEFINED BEHAVIOUR...6.10-9 (IMDEFB50)')
end.
