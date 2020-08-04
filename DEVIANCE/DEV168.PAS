{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.1-18, FILE=DEV168, CLASS=DEVIANCE, LEVEL=0                }
{                                                                    }
{:This test contains an IN operation for which the base-type of the  }
{:right operand is not compatible with the type of the left operand. }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV168(output);
type
   onoff = (on, off);
   colours = set of (red, blue, green);
var
   bool : boolean;
begin
   bool := (on in [red, blue]);
   writeln(' DEVIATES...6.7.1-18 (DEV168)')
end.
