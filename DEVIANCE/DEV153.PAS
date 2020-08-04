{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.4-12, FILE=DEV153, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:The component-types of the two arrays used in the transfer         }
{:procedure unpack must be identical.                                }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV153(output);
type
   zeroone = 0..1;
   notidenticaltozeroone = 0..1;
var
   pac : packed array[1..2] of zeroone;
   unp : array[1..2] of notidenticaltozeroone;
   i   : integer;
begin
   i:=1;
   pac[1]:=1; pac[2]:=0;
   unpack(pac,unp,i);
   writeln(' DEVIATES...6.6.5.4-12 (DEV153)')
end.
