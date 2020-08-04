{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.4-11, FILE=DEV152, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:This test deviates by applying the transfer procedure pack to two  }
{:arrays, both of which are packed.                                  }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV152(output);
var
   unp : packed array[1..2] of integer;
   pac : packed array[1..2] of integer;
   i   : integer;
begin
   pac[1]:=1; pac[2]:=2;
   i:=1;
   unpack(pac,unp,i);
   writeln(' DEVIATES...6.6.5.4-11 (DEV152)')
end.
