{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.6.3.8-7, FILE=LEV1F48, CLASS=ERRORHANDLING, LEVEL=1,     }
{ NUMBER=59                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{   V5.3: Placed 'ERROR' as the first line executed.                 }
{   V5.4: Added 5.3 comment                                          }
{                                                                    }

program LEV1F48(output);
type
   onetwo = 1..2;
   threefour = 3..4;
var
   a : array[threefour] of integer;

procedure conf1(var aa : array[l1..h1:threefour] of integer);
   begin
   end;

procedure conf2(var bb : array[l2..h2:integer] of integer);
   begin
   conf1(bb)
   end;

begin
   a[3] := 3;
   a[4] := 4;
   conf2(a);
   writeln(' PRETEST...6.6.3.8-7 (LEV1F48)')
end.
