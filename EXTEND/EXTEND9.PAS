{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.3-9, FILE=EXTEND9, CLASS=EXTENSION, LEVEL=0               }
{                                                                    }
{:Check that underscores are significant.                            }
{                                                                    }
{ This is an extension test for unextended Pascal; an Extended       }
{ Pascal processor should run the program and display the first      }
{ message.                                                           }
{                                                                    }
{ Modification History :                                             }
{   V5.3: New Test.                                                  }
{   V5.4: Added missing right brace to above line.                   }
{       : Added space to writeln string for control.                 }
{       : Added indication of a_a value to report string.            }
{   V5.7: Comment relating to Extended Pascal amended.               }
{                                                                    }

program EXTEND9(output);
var
   a_a: integer;

   procedure p(var res: integer);
   var
      aa: integer;

   begin
   aa := 2;
   res := a_a;
   end;

begin
a_a := 1;
p(a_a);
if a_a=1 then
   writeln(' EXTEND...6.1.3-9 (EXTEND9), 1')
else if a_a=2 then
   writeln(' EXTEND...6.1.3-9 (EXTEND9), 2')
else
   writeln(' EXTEND...6.1.3-9 (EXTEND9), OTHER')
end.
