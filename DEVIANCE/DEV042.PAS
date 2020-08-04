{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.2.2-11, FILE=DEV042, CLASS=DEVIANCE, LEVEL=0                }
{                                                                    }
{:This test checks that identical labels can not appear in the same  }
{:label-declaration-part.                                            }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV042(output);
label
   1, 1;
begin
   1:writeln(' DEVIATES...6.2.2-11 (DEV042)')
end.
