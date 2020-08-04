{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.6.5-4, FILE=DEV163, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test checks that non-file parameters to the eof function are  }
{:rejected.                                                          }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Program parameter removed and real changed to char.        }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV163(output);
type
   rekord = record
              a : integer;
              b : char
            end;
var
   fyle    : file of rekord;
   endfyle : boolean;
begin
   rewrite(fyle);
   endfyle:=eof(fyle^);
   writeln(' DEVIATES...6.6.6.5-4 (DEV163)')
end.
