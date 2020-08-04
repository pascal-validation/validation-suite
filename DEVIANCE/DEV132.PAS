{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.4-3, FILE=DEV132, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test deviates since a standard procedure is not permitted as  }
{:an actual procedure parameter.                                     }
{                                                                    }
{ Modification History :                                             }
{   V4.0. New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV132(output);
procedure a (procedure b(var f:text));
begin
   b(output)
end;
begin
   a(page);
   writeln(' DEVIATES...6.6.3.4-3 (DEV132)')
end.
