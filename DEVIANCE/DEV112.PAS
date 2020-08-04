{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.1-4, FILE=DEV112, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This program checks that a procedure call is not incorrectly bound }
{:to the wrong defining occurrence.                                  }
{                                                                    }
{ The test uses a standard function rather than nested procedures.   }
{ Simple processors are likely to fail it. Test does not work if     }
{ ord('A')=-maxint. Since the applied occurrence is before the       }
{ defining occurrence, the program deviates.                         }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV112(output);
var
     i:integer;
procedure p;
     begin
     i := ord( 'A' )
     end;
function ord(c:char): integer;
     begin
     ord := - maxint
     end;
begin
p;
if i <> -maxint then
     writeln(' OUTER FUNCTION')
else
     writeln(' INNER FUNCTION');
writeln(' DEVIATES...6.6.1-4 (DEV112)')
end.
