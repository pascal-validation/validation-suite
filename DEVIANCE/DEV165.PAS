{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.6.5-9, FILE=DEV165, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test deviates since eoln should only be allowed on textfiles. }
{                                                                    }
{ The boolean function eoln may only be used with the required type  }
{ text.                                                              }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV165(output);
type
   sneak = file of char;
var
   dirty : sneak; { Not a textfile}
   b     : boolean;
begin
   rewrite(dirty);
   write(dirty,' '); write(dirty,' ');
   reset(dirty);
   b:=eoln(dirty); { Not allowed}
   writeln(' DEVIATES...6.6.6.5-9 (DEV165)')
end.
