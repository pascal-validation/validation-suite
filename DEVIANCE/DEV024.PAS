{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.7-11, FILE=DEV024, CLASS=DEVIANCE, LEVEL=0                }
{                                                                    }
{:A null string should not be accepted by a Pascal processor.        }
{                                                                    }
{ The Pascal Standard says that a character string is a sequence of  }
{ characters enclosed by apostrophes, consequently there is no NULL  }
{ string, and the processor should not allow them in programs.       }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment and writing revised.                               }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV024(output);
begin
   writeln('':20);
   writeln(' DEVIATES...6.1.7-11 (DEV024)')
end.
