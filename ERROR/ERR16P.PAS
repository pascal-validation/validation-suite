{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.5.5-3, FILE=ERR16P, CLASS=ERRORHANDLING, LEVEL=0,        }
{ NUMBER=06                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR16P(output);
type
   sex   = (male,female,notgiven);
   socialsecuritynumber = 0..10000;
   rekord = record
               a : socialsecuritynumber;
               b : sex
            end;
var
   fyle : file of rekord;
begin
   rewrite(fyle);
   with fyle^ do
   begin
      a:=9999;
      b:=notgiven
   end;
   put(fyle);
   writeln(' PRETEST...6.5.5-3 (ERR16P)')
end.
