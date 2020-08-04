{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.6.1-1, FILE=DEV155, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test checks that a required-function may not be used as a     }
{:formal parameter.                                                  }
{                                                                    }
{ This program uses a standard function as a parameter to a          }
{ procedure.                                                         }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Reclassified from IMPLEMENTATIONDEFINED.                   }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV155(output);
procedure quidnunk(function a(b : integer):boolean);
   var
      x : integer;
   y : boolean;
   begin
      x:=5;
      y:=false;
      y:=a(x);
      if y then
         writeln(' STANDARD FUNCTIONS PERMITTED AS PARAMETERS')
      else
         writeln(' STANDARD FUNCTIONS NOT PERMITTED AS ',
                  'PARAMETERS, Y = ',y)
   end;
begin
   quidnunk(odd);
   writeln(' DEVIATES...6.6.6.1-1 (DEV155)')
end.
