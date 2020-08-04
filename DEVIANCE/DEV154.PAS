{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.4-13, FILE=DEV154, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:When using pack or unpack, the type of the expression must be      }
{:compatible with the index-type of the unpacked array.              }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV154(output);
var
   pac : packed array[1..2] of char;
   unp : array[1..2] of char;
begin
   unp[1]:='a'; unp[2]:='a';
   pack(unp,'1',pac);
   unpack(pac,unp,'1');
   writeln(' DEVIATES...6.6.5.4-13 (DEV154)')
end.
