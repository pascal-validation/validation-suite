{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.2.2-13, FILE=LEV1F01, CLASS=IMPLEMENTATIONDEFINED,        }
{ LEVEL=1, NUMBER=05                                                 }
{                                                                    }
{:This program determines the range of the type char by using a      }
{:conformant array.                                                  }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{   V5.7: NUMBER changed to correspond with Annex E of 7185:1990.    }
{                                                                    }

program LEV1F01(output);
type
   bit = 0 .. 1;
var
   a: array [ char ] of bit;
   lower, upper: char;
procedure limits( var lower, upper: char;
                  var a: array [ l .. u: char] of bit);
   begin
   lower := l;
   upper := u;
   end;
begin
   limits(lower, upper, a);
   writeln(' OUTPUT FROM TEST...6.4.2.2-13 (LEV1F01)');
   write(' The range of ordinal values of char-type is');
   writeln(' from ', ord(lower), ' to ', ord(upper) );
   writeln(' IMPLEMENTATION DEFINED...6.4.2.2-13 (LEV1F01)')
end.
