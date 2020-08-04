{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.2.2-10, FILE=IMPDEF04, CLASS=IMPLEMENTATIONDEFINED,       }
{ LEVEL=0, NUMBER=08                                                 }
{                                                                    }
{:This program prints out the implementation defined value of        }
{:maxint.                                                            }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Was previously 6.4.2.2-7.                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{   V5.7: NUMBER changed to correspond with Annex E of 7185:1990.    }
{                                                                    }

program IMPDEF04(output);
begin
   writeln(' OUTPUT FROM TEST...6.4.2.2-10');
   writeln(' The value of maxint is ', maxint);
   writeln(' IMPLEMENTATION DEFINED...6.4.2.2-10 (IMPDEF04)')
end.
