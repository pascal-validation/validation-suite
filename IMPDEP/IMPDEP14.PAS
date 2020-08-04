{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9.5-3, FILE=IMPDEP14, CLASS=IMPLEMENTATIONDEPENDENT,        }
{ LEVEL=0, NUMBER=09                                                 }
{                                                                    }
{:This program determines the sequence of characters used to         }
{:represent the effect of page on a textfile.                        }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{   V5.7: NUMBER changed to correspond with Annex F of 7185:1990.    }
{                                                                    }

program IMPDEP14(output);
var
   f: text;
   c: char;
   endline: boolean;
   index:integer;
begin
   rewrite(f);
   write(f, '.');
   page(f);
   writeln(f, '.');
   reset(f);
   repeat
      read(f, c);
   until (c = '.');
   writeln(' OUTPUT FROM TEST...6.9.5-3');
   write(' The sequence corresponding to page is ');
   index:=0;
   repeat
      endline := eoln(f);
      read(f, c);
      if c <> '.' then
         begin
         index:=index+1;
         if index<>1 then write(' followed by ');
         if endline then
            write( 'EOLN')
         else
            write('CHR(', ord(c):2,')' )
         end;
   until (c = '.');
   writeln;
   writeln(' IMPLEMENTATION DEPENDENT...6.9.5-3 (IMPDEP14)')
end.
