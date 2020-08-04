{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.8-7, FILE=LEV1F49, CLASS=ERRORHANDLING, LEVEL=1,        }
{ NUMBER=60                                                          }
{                                                                    }
{:This test contains a conformant-array and the values of the        }
{:index-type of the actual-parameter violate the conformability      }
{:rules.                                                             }
{                                                                    }
{ All elements of the index-type of the actual-parameter must lie    }
{ inside the closed interval specified by the                        }
{ index-type-specification of the conformant-array-schema.           }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program LEV1F49(output);
type
   onetwo = 1..2;
   threefour = 3..4;
var
   a : array[threefour] of integer;

procedure conf1(var aa : array[l1..h1:onetwo] of integer);
   begin
   end;

procedure conf2(var bb : array[l2..h2:integer] of integer);
   begin
   conf1(bb)
   end;

begin
   writeln(' ERROR...6.6.3.8-7 (LEV1F49)');
   a[3] := 3;
   a[4] := 4;
   conf2(a);
   writeln(' ERROR NOT DETECTED...6.6.3.8-7 (D.60)')
end.
