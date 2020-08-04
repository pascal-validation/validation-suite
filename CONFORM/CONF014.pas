{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.7-1, FILE=CONF014, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This test checks the implementation of the required type-char.     }
{                                                                    }
{ Character strings consisting of a single character are the         }
{ constants of the standard type char.                               }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Writing made to conform to conventions, and comment        }
{         revised.                                                   }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF014(output);
const
   one = '1';
   two = '2';
var
   twotoo : char;
begin
   if (one <> two) and (two = '2') then
      begin
      twotoo:='2';
      if twotoo = two then
         writeln(' PASS...6.1.7-1 (CONF014)')
      else
         writeln(' FAIL...6.1.7-1 (CONF014)')
      end
   else
      writeln(' FAIL...6.1.7-1 (CONF014)')
end.
