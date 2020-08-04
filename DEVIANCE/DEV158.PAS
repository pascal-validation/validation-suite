{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.6.3-2, FILE=DEV158, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test checks that neither trunc nor round are permitted to     }
{:have integer parameters.                                           }
{                                                                    }
{ The Standard requires these to be real.                            }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Made i less than 1024. Write revised. Was previously       }
{         6.6.6.3-4.                                                 }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV158(output);
var
   i:integer;
   x:real;
begin
   i:=1001;
   x:=trunc(i)+round(i+1);
   writeln(' DEVIATES...6.6.6.3-2 (DEV158)')
end.
