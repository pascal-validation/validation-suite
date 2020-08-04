{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.4-14, FILE=LEV1F51, CLASS=CONFORMANCE, LEVEL=1          }
{                                                                    }
{:This test contains calls of pack and unpack in which both          }
{:parameters are conformant-array-parameters.                        }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program LEV1F51(output);
type
   arr = array[1..9] of char;
   pacarr = packed array[1..9] of char;
var
   pac1,pac2 : pacarr;
   unp1      : arr;

procedure conf(var unp : array[l1..u1:integer] of char;
               var pac : packed array[l2..u2:integer] of char;
               packingwanted : boolean);
var
   i : integer;
begin
   i := 1;
   if packingwanted then
      pack(unp,i,pac)
   else
      unpack(pac,unp,i)
end;

begin
   pac1 := 'ABCDEFGHI';
   conf(unp1,pac1,false);
   conf(unp1,pac2,true);
   if pac1 = pac2 then
      writeln(' PASS...6.6.5.4-14 (LEV1F51)')
   else
      writeln(' FAIL...6.6.5.4-14 (LEV1F51)')
end.
