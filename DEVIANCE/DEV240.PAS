{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9.1-12, FILE=DEV240, CLASS=DEVIANCE, LEVEL=0                }
{                                                                    }
{:This test checks that reading an integer from a file of char is    }
{:not permitted.                                                     }
{                                                                    }
{ Modification History :                                             }
{   V4.2: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV240(output);
var
   nontext: file of char;
   i: integer;
begin
   rewrite(nontext);
   write(nontext, ' ', '1', '2', ' ', ' ');
   reset(nontext);
   read(nontext, i);
   writeln(' DEVIATES...6.9.1-12 (DEV240)', i)
end.
