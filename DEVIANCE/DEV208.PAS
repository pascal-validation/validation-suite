{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.5-3, FILE=DEV208, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test contains invalid real case-constants with an integer     }
{:case-expression.                                                   }
{                                                                    }
{ If the program is acceptable its effects could be expression.      }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Class changed to DEVIANCE. Writes revised. Was             }
{         previously 6.8.3.5-7.                                      }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV208(output);
var
   a,i:integer;
begin
   for i:=1 to 4 do
      case i of
      1,2: a:=1;
      2.5: writeln(' I = ',i,', CASE CONSTANT = 2.5');
      3:   a:=2;
      4e0: writeln(' I = ',i,', CASE CONSTANT = 4E0')
      end;
   writeln(' DEVIATES...6.8.3.5-3 (DEV208)')
end.
