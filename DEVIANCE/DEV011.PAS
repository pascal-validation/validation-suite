{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.5-6, FILE=DEV011, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This program illustrates that brackets may not appear within a     }
{:number.                                                            }
{                                                                    }
{ By implication, this is likely if the exponent marker is regarded  }
{ as a (pseudo)operator.                                             }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV011(output);
const
   x = 2.0E(-3);
begin
   writeln(' THE VALUE OF X IS ', x);
   writeln(' DEVIATES...6.1.5-6 (DEV011)')
end.
