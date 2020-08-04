{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.9-19, FILE=ERR75T, CLASS=ERRORHANDLING, LEVEL=0,        }
{ NUMBER=43                                                          }
{                                                                    }
{:This test uses an undefined for-statement control-variable.        }
{                                                                    }
{ This test checks that the undefined state of a for-statement       }
{ control-variable when the loop is left has one or both of the      }
{ following properties:                                              }
{    (a) Range checks are not omitted on these variables in the      }
{        supposition that its value is permissible                   }
{ or (b) The value of the variable is in range of its type (in this  }
{        specific implementation).                                   }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Comment changed.                                           }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR75T(output);
type
   t=(red,green,blue,pink);
var
   i,j,k:t;
   m:integer;
begin
   writeln(' ERROR...6.8.3.9-19 (ERR75T)');
   { i is a finite scalar.}
   i:=green;
   j:=red;
   k:=pink;
   m:=0;
   for i:=j to k do
      m:=m+1;
   writeln(' THE UNDEFINED ORDINAL VALUE OF I IS ',ord(i));
   writeln(' ERROR NOT DETECTED...6.8.3.9-19 (D.43)');
   write(' ITS SYMBOLIC VALUE IS ');

   { A possible omission of the range check on the case-statement
     may be disastrous if a wild jump occurs.}

   case i of
   red: writeln(' RED');
   green: writeln(' GREEN');
   blue: writeln(' BLUE');
   pink: writeln(' PINK')
   end;
   writeln;  { Just in case the range isn't checked.}
   writeln(' ERROR NOT DETECTED')
end.
