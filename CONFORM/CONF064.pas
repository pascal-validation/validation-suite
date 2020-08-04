{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.4-2, FILE=CONF064, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This program tests if a set of char is permitted by the processor. }
{                                                                    }
{ Processors that have only one letter case in their character set   }
{ should still use the test unchanged although it will redundantly   }
{ test the letter 'z' twice.  The test assumes that exercising this  }
{ set of characters will trap most deviating processors as the trap  }
{ most deviating processors as the character sets in use can be      }
{ guessed at.  Standard Pascal does not contain a maxchar function   }
{ which can be used to exercise the processor more thoroughly.       }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment and write revised.                                 }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF064(output);
var
   s : set of char;
begin
   s:=[chr(0),';',' ','0'..'9','a'..'z','A'..'Z'];
   if (chr(0) in s) and (';' in s) and (' ' in s) and ('0' in s) and
      ('z' in s) and ('Z' in s) and ('9' in s) then
      writeln(' PASS...6.4.3.4-2 (CONF064)')
   else
      writeln(' FAIL...6.4.3.4-2 (CONF064)')
end.
