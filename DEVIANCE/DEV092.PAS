{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.5-10, FILE=DEV092, CLASS=DEVIANCE, LEVEL=0                }
{                                                                    }
{:This test checks that structurally-identical types are not         }
{:regarded as identical.                                             }
{                                                                    }
{ Again, this test is similar to 6.4.5-9, except that deviance for   }
{ pointers is tested. Although the two pointers in this example      }
{ point to the same type, they are not identical.                    }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Comment changed.                                           }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV092(output);
type
   rekord = record
               a : integer
            end;
   ptrone = ^rekord;
   ptrtwo = ^rekord;
var
   ptrtorectoo : ptrtwo;
procedure test(var ptr : ptrone);
begin
   writeln(' DEVIATES...6.4.5-10 (DEV092)')
end;
begin
   new(ptrtorectoo);
   ptrtorectoo^.a:=32;
   test(ptrtorectoo)
end.
