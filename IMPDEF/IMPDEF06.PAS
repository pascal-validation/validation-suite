{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.2.2-12, FILE=IMPDEF06, CLASS=IMPLEMENTATIONDEFINED,       }
{ LEVEL=0, NUMBER=04                                                 }
{                                                                    }
{:This program checks if the implementation-defined ordinal values   }
{:of the required string-characters conform to either ISO 646        }
{:(ASCII) or EBCDIC.                                                 }
{                                                                    }
{ Modification History :                                             }
{   V4.0: Output layout changed.                                     }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Test rewritten.                                            }
{                                                                    }

program IMPDEF06(output);

begin
   writeln(' OUTPUT FROM TEST...6.4.2.2-12');
   if (ord('A')=65) and (ord('a')=97) and (ord('0')=48) then
     writeln(
      ' Ordinal values of characters appear to follow ISO 646 (ASCII).')
   else
     if (ord('A')=193) and (ord('a')=129) and (ord('0')=240) then
        writeln(
     ' Ordinal values of characters appear to follow EBCDIC.')
     else
       writeln(
     ' Character set is not ISO 646 (ASCII) or EBCDIC.');
   writeln(' IMPLEMENTATION DEFINED...6.4.2.2-12 (IMPDEF06)')
end.
