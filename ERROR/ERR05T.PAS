{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.3-13, FILE=ERR05T, CLASS=ERRORHANDLING, LEVEL=0,        }
{ NUMBER=43                                                          }
{                                                                    }
{:This program causes an error by accessing a field with an          }
{:undefined-value.                                                   }
{                                                                    }
{ Similar to 6.4.3.3-11, except that no tag-field is used. A change  }
{ of variant occurs by reference to a field associated with a new    }
{ variant. Again, these fields come into existence undefined.        }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Write revised, and comment revised. Was previously         }
{         6.4.3.3-8.                                                 }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR05T(output);
type
   two = (a,b);
var
   variant : record
               case two of
                  a:(m:integer;
                     l:integer);
                  b:(n:integer;
                     o:integer)
             end;
   i : integer;
begin
   writeln(' ERROR...6.4.3.3-13 (ERR05T)');
   variant.n:=1;
   variant.o:=1;
   variant.m:=1;
   i:=variant.l;     {illegal}
   writeln(' ERROR NOT DETECTED...6.4.3.3-13 (D.43)')
end.
