{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.6.6.2-16, FILE=ERR53P, CLASS=ERRORHANDLING, LEVEL=0,     }
{ NUMBER=33                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR53P(output);

var
   m:real;

begin
     m:=2.71828;
     m:=ln(m*2);
     writeln(' PRETEST...6.6.6.2-16 (ERR53P)')
end.
