{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.3-17, FILE=ERR41T, CLASS=ERRORHANDLING, LEVEL=0,        }
{ NUMBER=22                                                          }
{                                                                    }
{:This test causes an error by calling dispose(q,k1, ,km) when the   }
{:variants in the variable identified by the pointer q, are          }
{:different from those specified by the case-constants k1, ,km.      }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Tests modified to use extended form of new.                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR41T(output);
type
   tagtype1 = boolean;
   tagtype2 = 1..2;
   tagtype3 = 3..4;
   rec = record
            case tag1 : tagtype1 of
            false : (q : integer);
            true  : (case tag2 : tagtype2 of
                     1 : (b1,b2 : boolean);
                     2 : (case tag3 : tagtype3 of
                          3 : (r : boolean);
                          4 : (s,t : integer)))
         end;
var
   ptr : ^ rec;
begin
   writeln(' ERROR...6.6.5.3-17 (ERR41T)');
   new(ptr,true,2,3);
   with ptr^ do
      begin
      tag1 := true;
      tag2 := 2;
      tag3 := 3;
      end;
   dispose(ptr,true,2,4);
   writeln(' ERROR NOT DETECTED...6.6.5.3-17 (D.22)')
end.
