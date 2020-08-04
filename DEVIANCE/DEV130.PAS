{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.3-5, FILE=DEV130, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test deviates since an actual variable parameter shall not    }
{:denote a component of a packed variable.                           }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV130(output);
type
   card = packed array[1..80] of char;
var
   image : card;
function headercard(var col1 :char) : boolean;
   begin
      if col1 = 'H' then
         headercard := true
      else
         headercard := false
   end;
begin
   image[1] := ' ';
   if headercard(image[1]) then
      writeln(' DEVIATES...6.6.3.3-5 (DEV130),',
              ' VAR PARAMETER PASSING(1)')
   else
      writeln(' DEVIATES...6.6.3.3-5 (DEV130),',
              ' VAR PARAMETER PASSING(2)')
end.
