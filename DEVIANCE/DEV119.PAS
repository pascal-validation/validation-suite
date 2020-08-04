{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.2-6, FILE=DEV119, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:A function-identifier can appear in three distinct 'use' contexts: }
{:function call, assignment of function result and as a function     }
{:parameter. This program illustrates the difficulty of              }
{:distinguishing the three contexts.                                 }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV119(output);
var i: integer;
function f: integer;
   begin
   f := i
   end;
procedure p( x: integer; var y: integer; function z: integer);
   begin
   y := 5;
   writeln(' VALUES OF X, Y AND Z ARE ',x,y,z)
   end;
begin
   i := 10;
   p( f, f, f);
   writeln(' VALUE OF F IS ',f);
   writeln(' DEVIATES...6.6.2-6 (DEV119)')
end.
