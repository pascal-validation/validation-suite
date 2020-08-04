{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.1-2, FILE=CONF050, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This program checks if packing is propagated throughout an array   }
{:with multiple-indices.                                             }
{                                                                    }
{ The Pascal Standard specifies that the packed prefix in front of a }
{ multiple-index array-type declaration is propagated to all levels  }
{ of the array.  This is difficult to test except by exercising      }
{ except by exercising deviance tests on the processor by attempting }
{ to use such a packed object in unsuitable contexts.  However, in   }
{ the case of arrays of char the residual structural compatibility   }
{ allows a conformance test to be designed.                          }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test to test packing propagation.                      }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF050(output);
type
   table=packed array[0..99,1..12] of char;
var
   t:table;
   i:0..99;
begin
   for i:=0 to 99 do t[i]:='123456789012';
   writeln(' PASS...6.4.3.1-2 (CONF050)')
end.
