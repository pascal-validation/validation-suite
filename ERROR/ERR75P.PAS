{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.8.3.9-19, FILE=ERR75P, CLASS=ERRORHANDLING, LEVEL=0,     }
{ NUMBER=43                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.7: Modified to increase similarity to ERR75T by copying the   }
{         control variable within the loop.                          }
{                                                                    }

program ERR75P(output);
type
   t=(red,green,blue,pink);
var
   i,j,k:t;
   m:integer;
begin
   { i is a finite scalar.}
   i:=green;
   j:=red;
   k:=pink;
   m:=0;
   for i:=j to k do
      begin
      m:=m+1;
      k := i
      end;
   writeln(' THE ORDINAL VALUE OF K IS ',ord(k));
   write(' ITS SYMBOLIC VALUE IS  ');

   case k of
   red: writeln(' RED');
   green: writeln(' GREEN');
   blue: writeln(' BLUE');
   pink: writeln(' PINK')
   end;
   writeln;  { Just in case the range isn't checked.}
   writeln(' PRETEST...6.8.3.9-19 (ERR75P)')
end.
