{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.10-9, FILE=DEV236, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:This test tries to access a non-existent field of a record.        }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test from BNI.                                         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV236(output);
var
   rec:record
          i:integer;
          rec:record
                 i:integer;
                 rec:record
                        i:integer;
                     end;
              end;
       end;
begin
   with rec,rec do
      begin
         rec.i:=5;
         rec.rec.i:=7; {illegal}
      end;
   writeln(' DEVIATES...6.8.3.10-9 (DEV236)')
end.
