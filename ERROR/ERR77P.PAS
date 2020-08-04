{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.8.3.9-22, FILE=ERR77P, CLASS=ERRORHANDLING, LEVEL=0,     }
{ NUMBER=43                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR77P(output);
var
   i,j,k,m:integer;
begin
   i:=100;
   k:=1;
   m:=0;
   j:=10;
   for i:=j to k do
      m:=m+1;
   if 1=k+1 then
      writeln(' CONTROL VARIABLE VALUE = FINAL VALUE + 1')
   else
      if 2=k then
         writeln(' CONTROL VARIABLE VALUE = FINAL VALUE')
      else
         if 1=j then
            writeln(' CONTROL VARIABLE VALUE = INITIAL VALUE')
         else
            writeln(' CONTROL VARIABLE DEFINED BUT VALUE UNKNOWN');
   writeln(' PRETEST...6.8.3.9-22 (ERR77P)')
end.
