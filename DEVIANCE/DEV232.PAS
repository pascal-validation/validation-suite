{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.9-17, FILE=DEV232, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:The control-variable of a for-statement must be local to the block.}
{:.                                                                  }
{                                                                    }
{ This test exhibits a particuarly nasty form of insecurity          }
{ introduced if this deviation is combined with inadequate threat    }
{ checking. On some deviant processors the program loops endlessly;  }
{ if this occurs re-run the test with monitoring set to true to      }
{ observe what is happening.                                         }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Comment changed and var parameter to s deleted.            }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV232(output);
var
   i:integer;
   monitoring:boolean;
procedure p;
   procedure q;
      procedure r;
         procedure s(i:integer);
         begin
            if monitoring then
               writeln(' ',i)
         end;
      begin
         for i:= 5 downto 2 do
            s(i)
      end;
   begin
      r
   end;
begin
   q
end;
begin
   monitoring:= false;
   for i:= 1 to 6 do
      p;
   writeln(' DEVIATES...6.8.3.9-17 (DEV232)')
end.
