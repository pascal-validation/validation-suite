{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.2.3-4, FILE=CONF046, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This program illustrates the difficulties of when a type is        }
{:defined.                                                           }
{                                                                    }
{ Similar to 6.4.2.3-3, but for records rather than arrays.          }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF046(output);
var
   x: record
      a: (male, female);
      b: male .. female
      end;
begin
   x.a := pred(female);
   x.b := succ(x.a);
   if pred(x.b) <> male then
      writeln(' FAIL...6.4.2.3-4 (CONF046)')
   else
      writeln(' PASS...6.4.2.3-4 (CONF046)')
end.
