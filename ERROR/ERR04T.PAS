{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.3-12, FILE=ERR04T, CLASS=ERRORHANDLING, LEVEL=0,        }
{ NUMBER=43                                                          }
{                                                                    }
{:This program accesses a field of a variant which is not the        }
{:current variant, thereby changing the selected variant, but causes }
{:an error due to the undefined-value.                               }
{                                                                    }
{ A variant-part that does not contain a tagfield shall be assumed   }
{ to have a virtual tagfield.  A reference to a field shall          }
{ attribute the value appropriate to the variant of the field to     }
{ that virtual tagfield.  However, any change of variant shall cause }
{ the fields of the variant to be totally-undefined unless they have }
{ been attributed a value.                                           }
{                                                                    }
{ Modification History :                                             }
{   V4.0: Reference number in headers corrected.                     }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR04T(output);
type
   two = (a,b);
var
   variant : record
               case two of
                  a : (m : integer);
                  b : (n : integer)
             end;
   i : integer;
begin
   writeln(' ERROR...6.4.3.3-12 (ERR04T)');
   variant.m:=2;
   i:=variant.n;     { illegal}
   writeln(' ERROR NOT DETECTED...6.4.3.3-12 (D.43)')
end.
