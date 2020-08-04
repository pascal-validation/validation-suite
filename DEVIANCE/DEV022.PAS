{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.7-9, FILE=DEV022, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This test violates the string-compatibility rules.                 }
{                                                                    }
{ Some processors may allow compatibility between strings and char   }
{ constants. The two types for which they are constants are not      }
{ compatible. This program tests what the processor will allow. If   }
{ all cases are accepted the program will print DEVIATES. However,   }
{ if one or more of the cases are accepted, then the processor       }
{ deviates for those cases.                                          }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment and writing revised.                               }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV022(output);
const
   a = 'A';
var
   string1 : packed array[1..4] of char;
   string2 : packed array[1..1] of char;
   achar   : char;
begin
   string1:=a;          { CASE 1}
   string1:='A';        { CASE 2}
   string2:=a;          { CASE 3}
   string2:='A';        { CASE 4}
   achar:=string2;      { CASE 5}
   string1:='A   ';
   achar:=string1;      { CASE 6}
   string1:='   A';
   achar:=string1;      { CASE 7}
   writeln(' DEVIATES...6.1.7-9 (DEV022)')
end.
