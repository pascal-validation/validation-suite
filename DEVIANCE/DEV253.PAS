{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.10-1, FILE=DEV253, CLASS=DEVIANCE, LEVEL=0                  }
{                                                                    }
{:This program deviates as output is not declared but implicitly     }
{:used.                                                              }
{                                                                    }
{ Jensen and Wirth require one parameter, the Standard does not.     }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV253;
begin
   writeln(' DEVIATES...6.10-1 (DEV253)')
end.
