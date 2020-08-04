{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.2-9, FILE=DEV121, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This test deviates since the identification of a forward function  }
{:must not contain a function result-type.                           }
{                                                                    }
{ When a function is declared as being forward, the result-type of   }
{ the function may only appear once and it must appear before the    }
{ forward directive.                                                 }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV121(output);
function alwaystrue : boolean; forward;
function alwaystrue : boolean;
   begin
   alwaystrue := true
   end;
begin
   writeln(' DEVIATES...6.6.2-9 (DEV121)')
end.
