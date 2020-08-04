{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9.1-13, FILE=DEV241, CLASS=DEVIANCE, LEVEL=0                }
{                                                                    }
{:This test checks that writing a string to a packed file of char is }
{:not permitted.                                                     }
{                                                                    }
{ Modification History :                                             }
{   V4.2: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV241(output);
var
   nontext: packed file of char;
begin
   rewrite(nontext);
   write(nontext, '  ');          { two spaces in string}
   writeln(' DEVIATES...6.9.1-13 (DEV241)')
end.
