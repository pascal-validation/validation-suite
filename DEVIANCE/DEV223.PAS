{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.9-6, FILE=DEV223, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test checks that the threat to the control-variable posed by  }
{:its use as an actual parameter is detected.                        }
{                                                                    }
{ The call of procedure verynasty makes this program illegal.        }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Comment changed and body of procedure verynasty deleted.   }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV223(output);
var
   i,j:integer;
procedure verynasty (var n:integer);
begin
end;
begin
   j:=0;
   for i:=1 to 10 do
   begin
      j:=j+1;
      verynasty(i)
   end;
   writeln(' DEVIATES...6.8.3.9-6 (DEV223)')
end.
