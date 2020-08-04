{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.3-10, FILE=ERR36T, CLASS=ERRORHANDLING, LEVEL=0,        }
{ NUMBER=25                                                          }
{                                                                    }
{:This program causes an error to occur, as a variable created by    }
{:the long form of new is used as an actual parameter.               }
{                                                                    }
{ Similar to 6.6.5.3-8.                                              }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Tag-field assignment added.                                }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR36T(output);
type
   two      = (a,b);
   rekord   = record
               case tagfield:two of
                  a : (m : boolean);
                  b : (n : char)
              end;
var
   ptr : ^rekord;
procedure error(c : rekord);
   begin
      writeln(' ERROR NOT DETECTED...6.6.5.3-10 (D.25)')
   end;
begin
      writeln(' ERROR...6.6.5.3-10 (ERR36T)');
   new(ptr,a);
   ptr^.tagfield := a;
   ptr^.m:=true;
   error(ptr^)
end.
