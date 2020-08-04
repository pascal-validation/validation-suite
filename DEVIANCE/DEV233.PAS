{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.9-18, FILE=DEV233, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:This test checks that a control-variable cannot be used as a       }
{:control-variable within the controlled statement.                  }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Reclassified from ERRORHANDLING.                           }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV233(output);
var
   i,j:integer;
begin
   j:=0;
   for i:=1 to 10 do
      for i:=1 to 10 do
         j:=j+1;
   writeln(' DEVIATES...6.8.3.9-18 (DEV233), FOR STATEMENT');
end.
