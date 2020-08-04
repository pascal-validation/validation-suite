{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9.3.4.1-1, FILE=IMPDEF11, CLASS=IMPLEMENTATIONDEFINED,      }
{ LEVEL=0, NUMBER=13                                                 }
{                                                                    }
{:This program determines the implementation defined value which     }
{:represents the number of digit characters written in an exponent.  }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Renumbered from 6.9.3.5.1-2.                               }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{   V5.7: NUMBER changed to correspond with Annex E of 7185:1990.    }
{                                                                    }

program IMPDEF11(output);
var
   f:text;
   c:char;
   i:integer;
begin
   rewrite(f);
   write(f,1.0:10,'ABC');
   writeln(f);
   reset(f);
   repeat
      read(f,c)
   until (c='+');
   i:=-1;
   repeat
      read(f,c);
      i:=i+1
   until (c='A');
   writeln(' OUTPUT FROM TEST...6.9.3.4.1-1');
   write(' The number of digits in an exponent');
   writeln(' is',i:5);
   writeln(' IMPLEMENTATION DEFINED...6.9.3.4.1-1 (IMPDEF11)')
end.
