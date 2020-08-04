{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.2.2-10, FILE=DEV041, CLASS=DEVIANCE, LEVEL=0                }
{                                                                    }
{:This program attempts to assign a value to a function outside the  }
{:block of the function.                                             }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment changed to read 'block' instead of 'bounds'. Was   }
{         previously 6.2.2-9.                                        }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV041(output);
var
   i:integer;
function f1:integer;
begin
   f1:=6
end;
function f2(i:integer):integer;
begin
   f2:=i;
   f1:=5
end;
begin
   i:=f1;
   i:=f2(2);
   writeln(' DEVIATES...6.2.2-10 (DEV041)')
end.
