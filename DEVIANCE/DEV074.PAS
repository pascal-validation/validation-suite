{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.3-9, FILE=DEV074, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test deviates by assigning an incompatible value to an empty  }
{:record.                                                            }
{                                                                    }
{ This program is similar to 6.4.3.3-3.                              }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Comment changed.                                           }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV074(output);
type
   statuskind  = (defined,undefined);
   emptykind   = record end;
var
   empty : emptykind;
   number: record
            case status:statuskind of
               defined  : (i : integer);
               undefined: (e : emptykind)
            end;
begin
   with number do
   begin
      status:=undefined;
      e:=666
   end;
   writeln(' DEVIATES...6.4.3.3-9 (DEV074)')
end.
