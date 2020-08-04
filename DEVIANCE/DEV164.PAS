{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.6.5-5, FILE=DEV164, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test deviates since the parameter to the eoln function must   }
{:be a textfile.                                                     }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Comment changed and program parameter removed.             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV164(output);
var
   fyle  : file of integer;
a,b,c : integer;
begin
   rewrite(fyle);
   write(fyle,1,2,3);
   reset(fyle);
   read(fyle,a,b,c);
   if eoln(fyle) then
      writeln(' DEVIATES...6.6.6.5-5 (DEV164), EOLN PARAMETER(1)')
   else
      writeln(' DEVIATES...6.6.6.5-5 (DEV164), EOLN PARAMETER(2)')
end.
