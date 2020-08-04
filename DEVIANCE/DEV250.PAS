{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9.3.6-3, FILE=DEV250, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test deviates by writing an entire-variable of type packed    }
{:array(.1..1.) of char to a text file.                              }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test from Paul Gilmartin.                              }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV250(output);
var
   notastring : packed array[1..1] of char;
begin
   notastring[1] := 'Z';
   writeln(' NOTASTRING = ', notastring);
   writeln(' DEVIATES...6.9.3.6-3 (DEV250)')
end.
