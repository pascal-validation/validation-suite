{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9.3.1-8, FILE=IMPDEF09, CLASS=IMPLEMENTATIONDEFINED,        }
{ LEVEL=0, NUMBER=12                                                 }
{                                                                    }
{:This program determines the implementation defined default         }
{:field-width for writing booleans.                                  }
{                                                                    }
{ Modification History :                                             }
{   V4.0: Renumbered from 6.9.3.2-5.                                 }
{   V4.1: Spurious output on fail corrected.                         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{   V5.7: NUMBER changed to correspond with Annex E of 7185:1990.    }
{                                                                    }

program IMPDEF09(output);
var
   f:text;
   c:char;
   i,j:integer;

   function readfield:integer;
   var
      i:integer;
   begin
   i:=0;
   repeat
      read(f,c);
      i:=i+1
   until (c='Z');
   readfield:=i-1
end;

begin
   rewrite(f);
   write(f,true,'Z',false,'Z');
   writeln(f);
   reset(f);
   i:=readfield;
   j:=readfield;
   if (i=j) then
      begin
      writeln(' OUTPUT FROM TEST...6.9.3.1-8');
      write(' The Default output width for booleans');
      writeln(' is',i:5,' characters');
      writeln(' IMPLEMENTATION DEFINED...6.9.3.1-8 (IMPDEF09)')
      end
   else
      writeln(' FAIL...6.9.3.1-8 (IMPDEF09)')
end.
