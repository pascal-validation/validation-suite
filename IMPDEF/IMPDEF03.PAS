{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.9-6, FILE=IMPDEF03, CLASS=IMPLEMENTATIONDEFINED, LEVEL=0, }
{ NUMBER=02                                                          }
{                                                                    }
{:This program checks whether the equivalent symbol can be used for  }
{:the reference representation of up-arrow.                          }
{                                                                    }
{ It will not be possible to convert this program if the commercial  }
{ at character is not available.                                     }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Test of square brackets moved to 6.1.9-5, comment          }
{         changed.                                                   }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{   V5.7: NUMBER changed to correspond with Annex E of 7185:1990.    }
{                                                                    }

program IMPDEF03(output);
type
   rec = record
           a,b:integer
         end;
   ptr1=@rec;  {If @ is not implemented, this will give bad syntax. }
   ptr2=^rec;
begin
   writeln(' OUTPUT FROM TEST...6.1.9-6');
   writeln(' The equivalent symbol to up-arrow is implemented');
   writeln(' IMPLEMENTATION DEFINED...6.1.9-6 (IMPDEF03)')
end.
