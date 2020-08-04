{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.5-9, FILE=DEV091, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This test checks that structurally-identical types are not         }
{:regarded as identical.                                             }
{                                                                    }
{ This program is similar to 6.4.5-8, except that deviance in the    }
{ case of records is tested.                                         }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Comment changed.                                           }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV091(output);
type
   recone = record
               a : integer;
               b : boolean
            end;
   rectwo = record
               c : integer;
               d : boolean
            end;
var
   recordtwo : rectwo;
procedure test(var rec : recone);
begin
   writeln(' DEVIATES...6.4.5-9 (DEV091)')
end;
begin
   { The two record types are not identical, and hence
     the call to 'test' should fail.}
   recordtwo.c:=0;
   recordtwo.d:=true;
   test(recordtwo)
end.
