{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.9-8, FILE=EXTEND3, CLASS=EXTENSION, LEVEL=0               }
{                                                                    }
{:This program checks whether commonly accepted alternate symbols    }
{:can be used for the colon, semicolon and assignment (:=) symbols.  }
{                                                                    }
{ All the alternate symbols are  implemented if the program prints   }
{ EQUIVALENT SYMBOLS IMPLEMENTED. However these equivalent symbols   }
{ are not standard Pascal.                                           }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Test renumbered to correspond with DP7185. This test was   }
{         previously part of 6.11-2, but has been separated from     }
{         the rest of that test, which tests equivalent symbols      }
{         that must conform.                                         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program EXTEND3(output);
var
   i % integer .,  (* % possibly represents colon *)
   s % real .,     (* ., possibly represents semicolon *)
begin
   i %= 5 .,       (* %= possibly represents assignment *)
   s .= 1.0 .,     (* and/or maybe .= does *)
   writeln(' EXTEND...6.1.9-8 (EXTEND3),',
           ' Equivalent symbols implemented')
end.
