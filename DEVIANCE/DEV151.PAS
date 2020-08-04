{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.4-10, FILE=DEV151, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:This test deviates by applying the transfer procedure pack to two  }
{:arrays, neither of which are packed.                               }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV151(output);
var
   i   : integer;
   unp : array[1..2] of integer;
   pac : array[1..2] of integer;
begin
   unp[1]:=1;unp[2]:=2;
   i:=1;
   pack(unp,i,pac);
   writeln(' DEVIATES...6.6.5.4-10 (DEV151)')
end.
