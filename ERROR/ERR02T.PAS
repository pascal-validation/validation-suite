{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.3-10, FILE=ERR02T, CLASS=ERRORHANDLING, LEVEL=0,        }
{ NUMBER=02                                                          }
{                                                                    }
{:This test causes an error by accessing a field of an inactive      }
{:variant.                                                           }
{                                                                    }
{ The Pascal Standard states that the value of a tag-field shall     }
{ determine which variant is active in determining the value of a    }
{ variant-part.  It shall be an error if any field-identifier is     }
{ used unless the value of the tag-field is associated with its      }
{ variant.  This program causes this error to occur.                 }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment and writing revised. Was previously 6.4.3.3-5.     }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR02T(output);
type
   two = (a,b);
var
   variant : record
               case tagfield:two of
                  a: (m:integer);
                  b: (n:integer)
             end;
   i : integer;
begin
   writeln(' ERROR...6.4.3.3-10 (ERR02T)');
   variant.tagfield:=a;
   variant.m:=1;
   i:=variant.n;     {illegal}
   writeln(' ERROR NOT DETECTED...6.4.3.3-10 (D.02)')
end.
