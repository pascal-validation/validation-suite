{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.2.2-3, FILE=DEV197, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This program deviates since an assignment to the identifier of a   }
{:required function is not permitted.                                }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV197(output);
begin
   ord:=ord('A');
   writeln(' DEVIATES...6.8.2.2-3 (DEV197)')
end.
