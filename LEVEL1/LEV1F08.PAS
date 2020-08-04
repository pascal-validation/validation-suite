{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.7-3, FILE=LEV1F08, CLASS=DEVIANCE, LEVEL=1              }
{                                                                    }
{:This test checks that the equals operator cannot be used with a    }
{:conformant array as an operand even if it is a packed array of     }
{:char.                                                              }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program LEV1F08(output);
procedure p( x, y: packed array [ l..u : integer] of char);
   begin
   if x = y then
      writeln( 'EQUALS ALLOWED')
   end;
begin
writeln( ' DEVIATES...6.6.3.7-3 (LEV1F08)')
end.
