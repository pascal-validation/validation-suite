{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.3-16, FILE=ERR40T, CLASS=ERRORHANDLING, LEVEL=0,        }
{ NUMBER=21                                                          }
{                                                                    }
{:This test causes an error by calling dispose(q,k1, ,km) with an    }
{:incorrect number of parameters.                                    }
{                                                                    }
{ If a variable is created using the form new(p,c1, ,cn) and is then }
{ removed using dispose(q,k1, ,km), it is an error if m is not equal }
{ to n.                                                              }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR40T(output);
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
   ptr : ^rec;
begin
   writeln(' ERROR...6.6.5.3-16 (ERR40T)');
   new(ptr,true,2,4);
   dispose(ptr,true,2);      { error}
   writeln(' ERROR NOT DETECTED...6.6.5.3-16 (D.21)')
end.
