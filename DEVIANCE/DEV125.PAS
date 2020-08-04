{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.1-8, FILE=DEV125, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:An identifier appearing in a formal-parameter-list should not      }
{:subsequently appear as a local variable.                           }
{                                                                    }
{ This test is similar to 6.6.3.1-5 except the procedure-heading is  }
{ separated from the block by the forward directive.                 }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test from Paul Gilmartin.                              }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV125(output);
var
   y : integer;
procedure call1(var x:integer);   forward;
procedure call2;
begin
   call1(y);
end;
procedure call1;
var
   x : integer;
begin
   x := 0;
   x := 2*x;
   writeln(' X = ',x:1)
end;
begin
   y := 1;
   call2;
   writeln(' DEVIATES...6.6.3.1-8 (DEV125)')
end.
