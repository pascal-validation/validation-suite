{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.3-11, FILE=ERR03T, CLASS=ERRORHANDLING, LEVEL=0,        }
{ NUMBER=43                                                          }
{                                                                    }
{:This program causes an error by accessing a field with an          }
{:undefined-value.                                                   }
{                                                                    }
{ The undefined value arises because when a change of variant        }
{ occurs, those fields associated with the new variant come into     }
{ existence with undefined values.                                   }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment changed into better English.  Write revised. Was   }
{         previously 6.4.3.3-6.                                      }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR03T(output);
type
   two = (a,b);
var
   variant : record
               case tagfield:two of
                  a : (m : integer;
                       l : integer);
                  b : (n : integer;
                       o : integer)
             end;
   i : integer;
begin
   writeln(' ERROR...6.4.3.3-11 (ERR03T)');
   variant.tagfield:=a;
   variant.m:=1;
   variant.l:=1;
   variant.tagfield:=b;
   variant.n:=1;
   i:=variant.o;     { illegal}
   writeln(' ERROR NOT DETECTED...6.4.3.3-11 (D.43)')
end.
