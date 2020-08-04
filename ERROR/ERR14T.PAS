{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.5.4-2, FILE=ERR14T, CLASS=ERRORHANDLING, LEVEL=0, NUMBER=04 }
{                                                                    }
{:This test causes an error since the pointer-variable has an        }
{:undefined value when it is dereferenced.                           }
{                                                                    }
{ Similar to 6.5.4-1.                                                }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Writes and layout revised.                                 }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR14T(output);
type
   rekord = record
               a : integer;
               b : boolean
            end;
var
   pointer : ^rekord;
begin
   writeln(' ERROR...6.5.4-2 (ERR14T)');
   pointer^.a:=1;  pointer^.b:=true;     {illegal}
   writeln(' ERROR NOT DETECTED...6.5.4-2 (D.04)')
end.
