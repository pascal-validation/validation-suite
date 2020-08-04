{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.3-25, FILE=DEV150, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:This test checks that new may not be applied to a variable which   }
{:is not a pointer-type.                                             }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV150(output);
var
   i : record
          j : integer;
          k : char
       end;
begin
   new(i);
   writeln(' DEVIATES...6.6.5.3-25 (DEV150)')
end.
