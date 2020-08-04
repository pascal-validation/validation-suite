{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.5-11, FILE=DEV093, CLASS=DEVIANCE, LEVEL=0                }
{                                                                    }
{:This test violates the compatibility requirements.                 }
{                                                                    }
{ Some implementations may have an implicit ordering between         }
{ different types, and allow these to be compared etc., thus not     }
{ conforming to the compatibility rules of the Pascal Standard.      }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Test and comment revised. Was previously 6.4.5-10.         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV093(output);
var
   colour : (red,green,blue);
   b : boolean;
begin
   b := red = 0;
   writeln(' DEVIATES...6.4.5-11 (DEV093)')
end.
