{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.3-14, FILE=ERR39T, CLASS=ERRORHANDLING, LEVEL=0,        }
{ NUMBER=20                                                          }
{                                                                    }
{:This test causes an error since an identifying-value which had     }
{:been created using the form new(p,c1, ,cn) is consequently removed }
{:by applying dispose(p).                                            }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR39T(output);
type
   rec = record
            case tag : boolean of
               true  : (b1,b2 : 1..10);
               false : (b3 : 11..20)
         end;
var
   ptr : ^rec;
begin
   writeln(' ERROR...6.6.5.3-14 (ERR39T)');
   new(ptr,true);
   dispose(ptr);      { error}
   writeln(' ERROR NOT DETECTED...6.6.5.3-14 (D.20)')
end.
