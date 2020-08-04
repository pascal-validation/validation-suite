{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9.3.4.1-2, FILE=IMPDEF12, CLASS=IMPLEMENTATIONDEFINED,      }
{ LEVEL=0, NUMBER=14                                                 }
{                                                                    }
{:This program determines the implementation defined exponent        }
{:character.                                                         }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{   V5.7: NUMBER changed to correspond with Annex E of 7185:1990.    }
{                                                                    }

program IMPDEF12(output);
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
   until (c='e') or (c='E');
   writeln(' OUTPUT FROM TEST...6.9.3.4.1-2');
   write(' The implementation defined exponent character is');
   if 'e' <> 'E' then
     if c <> 'E' then
        write(' lower case ')
     else
        write(' upper case ');
   writeln(c);
   writeln(' IMPLEMENTATION DEFINED...6.9.3.4.1-2 (IMPDEF12)')
end.
