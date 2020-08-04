{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.3-9, FILE=ERR35T, CLASS=ERRORHANDLING, LEVEL=0,         }
{ NUMBER=25                                                          }
{                                                                    }
{:This program causes an error to occur, as a variable created by    }
{:the long form of new is used as the variable in an                 }
{:assignment-statement.                                              }
{                                                                    }
{ Similar to 6.6.5.3-8.                                              }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Writes revised. Was previously 6.6.5.3-8.                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR35T(output);
type
   two      = (a,b);
   rekord   = record
               case tagfield:two of
                  a : (m : boolean);
                  b : (n : char)
              end;
var
   ptr : ^rekord;
   r   : rekord;
begin
   writeln(' ERROR...6.6.5.3-9 (ERR35T)');
   new(ptr,b);
   r.tagfield:=b;
   r.n:='A';
   ptr^:=r;
   writeln(' ERROR NOT DETECTED...6.6.5.3-9 (D.25)')
end.
