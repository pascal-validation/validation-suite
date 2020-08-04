{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.2.4-9, FILE=DEV179, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This checks that the left-hand operand of 'in' cannot be an        }
{:expression of a set-type.                                          }
{                                                                    }
{ Modification History :                                             }
{   V4.1: New test.                                                  }
{   V4.2: Comment replaced.                                          }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV179(output);
var
   s : set of 0..10;
begin
   s := [1];
   if s in [] then
      s := [2];
   writeln( ' DEVIATES...6.7.2.4-9 (DEV179)')
end.
