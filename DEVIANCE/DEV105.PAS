{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.5.3.2-7, FILE=DEV105, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test deviates since the index-type of an array-variable must  }
{:be type-compatible with the index-expression used.                 }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV105(output);
type
   range = 'a'..'z';
   table = array[range] of integer;
var
   a : table;
   i : integer;
begin
   for i:=ord('A') to ord('Z') do
      a[i]:=i;
   writeln(' DEVIATES...6.5.3.2-7 (DEV105)')
end.
