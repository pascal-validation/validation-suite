{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.2.2-6, FILE=CONF030, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This test checks that a value can be assigned to a                 }
{:function-identifier anywhere in the block of the function.         }
{                                                                    }
{ This test assigns the function-identifier a value from within a    }
{ function declared within the function block, which is allowed.     }
{ Some processors may erroneously restrict such assignments to the   }
{ statement-part of the function-block.                              }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Note deleted from PASS message and comment revised. Was    }
{         previously 6.2.2-8.                                        }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF030(output);
var
   j,k:integer;

function f1(i:integer):integer;
   function f2(i:integer):integer;
      function f3(i:integer):integer;
      begin
         f3:=1;
         f1:=i
      end;
   begin
      f2:=f3(i)
   end;
begin
   j:=f2(i)
end;

begin
   k:=f1(5);
   if (k=5) then
      writeln(' PASS...6.2.2-6 (CONF030)')
   else
      writeln(' FAIL...6.2.2-6 (CONF030)')
end.
