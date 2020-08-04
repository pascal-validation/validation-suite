{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9.3.1-6, FILE=DEV246, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This program checks whether an unpacked array of characters can be }
{:output to a textfile.                                              }
{                                                                    }
{ Modification History :                                             }
{   V4.0: Renumbered from 6.9.3.2-2.                                 }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV246(output);
var
   f:text;
   s:array[1..3] of char;
begin
   rewrite(f);
   s[1]:='R'; s[2]:='A'; s[3]:='N';
   write(f,' RAN=',s);
   writeln(' DEVIATES...6.9.3.1-6 (DEV246)')
end.
