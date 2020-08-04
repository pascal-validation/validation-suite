{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.3-13, FILE=ERR38T, CLASS=ERRORHANDLING, LEVEL=0,        }
{ NUMBER=19                                                          }
{                                                                    }
{:This test causes an error by activating a variant which is         }
{:different from those specified by new(p,c1, ,cn).                  }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR38T(output);
type
   rec = record
           case tag : boolean of
              true  : (b1,b2 : boolean);
              false : (i1,i2 : integer)
         end;
var
   ptr : ^rec;
begin
   writeln(' ERROR...6.6.5.3-13 (ERR38T)');
   new(ptr,true);
   ptr^.tag := false;      { error}
   writeln(' ERROR NOT DETECTED...6.6.5.3-13 (D.19)')
end.
