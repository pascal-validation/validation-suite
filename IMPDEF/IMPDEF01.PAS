{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.7-15, FILE=IMPDEF01, CLASS=IMPLEMENTATIONDEFINED,         }
{ LEVEL=0, NUMBER=01                                                 }
{                                                                    }
{:This program checks that the required string-characters are        }
{:provided.                                                          }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program IMPDEF01(output);
const
   reqstr = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789+-*/=<>.,:;^() ''';
var
   st: packed array [1 .. 52] of char;
   i, j: 1 .. 52;
   fail: boolean;
begin
   fail := false;
   st := reqstr;
   for i := 1 to 52 do
   for j := 1 to 52 do
      begin
      if (i <> j) and (st[i] = st[j]) then
         fail := true;
      end;
   if fail then
      writeln(' FAIL...6.1.7-15 (IMPDEF01)')
   else begin
      writeln(' OUTPUT FROM TEST...6.1.7-15');
      writeln(' The required string characters are provided');
      writeln(' IMPLEMENTATION DEFINED...6.1.7-15 (IMPDEF01)');
   end
end.
