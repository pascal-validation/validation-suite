{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.7.2.4-4, FILE=ERR70P, CLASS=ERRORHANDLING, LEVEL=0,      }
{ NUMBER=50                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR70P(output);
var
   a,d : set of 0..10;
   b,c : set of 5..15;
begin
   b:=[5,10];
   a:=[6,5,10];
   d:=a+b;   {ok}
   b:=[5,10,15];
   c:=a+b;
   writeln(' PRETEST...6.7.2.4-4 (ERR70P)')
end.
