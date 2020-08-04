{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.7-4, FILE=LEV1F09, CLASS=DEVIANCE, LEVEL=1              }
{                                                                    }
{:This test checks that writeln cannot be applied with a conformant  }
{:array as a parameter even if it is a packed array of char.         }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program LEV1F09(output);
procedure p( x: packed array [ l..u : integer] of char);
   begin
   writeln(x)
   end;
begin
if false then
   p('WRITELN ALLOWED');
writeln( ' DEVIATES...6.6.3.7-4 (LEV1F09)' )
end.
