{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.4-3, FILE=DEV207, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test deviates since the expression used in an if-statement    }
{:must have a boolean-type.                                          }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV207(output);
var
   b : (false,true);
begin
   b := true;
   if b then
      b := false;
   writeln(' DEVIATES...6.8.3.4-3 (DEV207)')
end.
