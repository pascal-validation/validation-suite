{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.7.1-12, FILE=LEV1F21, CLASS=DEVIANCE, LEVEL=1           }
{                                                                    }
{:This test checks that packing of a conformant array is not         }
{:permitted for two dimensions.                                      }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program LEV1F21(output);
var
   x: packed array [1..2] of packed array [3..4] of char;

procedure p(var a:
          packed array [l1..u1: integer;l2..u2:integer] of char);
begin
   a[l1,l2] := 'a';
end;

begin
   p(x);
   writeln(' DEVIATES...6.6.3.7.1-12 (LEV1F21)')
end.
