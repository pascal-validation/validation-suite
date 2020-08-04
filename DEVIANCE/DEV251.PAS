{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9.4-3, FILE=DEV251, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This test deviates by applying writeln to a non-text file.         }
{                                                                    }
{ The procedure writeln may only be applied to files of the required }
{ type text.                                                         }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV251(output);
type
   sneak = file of char;
var
   dirty : sneak; { Not a textfile}
begin
   rewrite(dirty);
   writeln(dirty); { Not allowed}
   writeln(' DEVIATES...6.9.4-3 (DEV251)')
end.
