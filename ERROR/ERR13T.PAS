{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.5.4-1, FILE=ERR13T, CLASS=ERRORHANDLING, LEVEL=0, NUMBER=03 }
{                                                                    }
{:This program causes an error by dereferencing a pointer whose      }
{:value is nil.                                                      }
{                                                                    }
{ The store via the nil pointer may corrupt a Pascal system so that  }
{ the error message is not printed.                                  }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Comment changed.                                           }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR13T(output);
type
   rekord = record
               a : integer;
               b : boolean
            end;
var
   pointer : ^rekord;
begin
   writeln(' ERROR...6.5.4-1 (ERR13T)');
   new(pointer);
   pointer:=nil;
   pointer^.a:=1;  pointer^.b:=true;     {illegal}
   writeln(' ERROR NOT DETECTED...6.5.4-1 (D.03)')
end.
