{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.2-5, FILE=DEV118, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This program tests the processors actions when the result-type     }
{:returned by a function is not a simple type.                       }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Type urray has to be packed. Assignment-statements in      }
{         main program corrected. Write for DEVIATES elaborated.     }
{         Was previously 6.6.2-4.                                    }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV118(output);
type
   wrekord = record
               a : integer;
               b : boolean
             end;
   sett    = set of 0..3;
   urray   = packed array[1..3] of char;
var
   record1 : wrekord;
   set1    : sett;
   array1  : urray;
function one : sett;
begin
   one:=[0..3]
end;
function two : urray;
begin
   two:='ABC'
end;
function three : wrekord;
var
   rekord : wrekord;
begin
   rekord.a:=1;
   rekord.b:=true;
   three:=rekord
end;
begin
   set1:=one;
   array1:=two;
   record1:=three;
   writeln(' DEVIATES...6.6.2-5 (DEV118)')
end.
