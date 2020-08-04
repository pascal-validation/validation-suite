{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.9-7, FILE=EXTEND2, CLASS=EXTENSION, LEVEL=0               }
{                                                                    }
{:This program checks whether equivalent-symbols can be used for the }
{:standard reference representation.                                 }
{                                                                    }
{ Commonly accepted equivalent symbols for the relational operators  }
{ <,>,<=,>=,<> are checked. However, they are not standard Pascal.   }
{ They are implemented if the program prints EQUIVALENT RELATIONAL   }
{ SYMBOLS IMPLEMENTED.                                               }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Test renumbered (was 6.11-3) to correspond with DP7185.    }
{         Class changed to EXTENSION because these alternate         }
{         symbols are not prescribed in DP7185. Writes revised       }
{         accordingly. Unnecessary vars l and b removed.             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program EXTEND2(output);
var
   j,k : integer;
begin
   writeln(' EQUIVALENT RELATIONAL SYMBOLS IMPLEMENTED');
   j:=1;
   k:=2;
   if (k GT j) and (j LT k) and (k GE j) and (j LE k) and (j NE k) then
      writeln(' IMPLEMENTATION DEFINED...6.1.9-7 (EXTEND2)')
   else
      writeln(' EXTEND...6.1.9-7 (EXTEND2), EQUIVALENT SYMBOLS')
end.
