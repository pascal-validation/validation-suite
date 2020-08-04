{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.8-8, FILE=LEV1F50, CLASS=DEVIANCE, LEVEL=1              }
{                                                                    }
{:This test deviates by trying to supply an actual-parameter whose   }
{:type is not an array-type, to a procedure which contains a         }
{:conformant-array-schema.                                           }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program LEV1F50(output);
var
   i : integer;

procedure pp (a : array[l1..u1:integer] of char);
begin
end;

begin
   pp(i);
   writeln(' DEVIATES...6.6.3.8-8 (LEV1F50)')
end.
