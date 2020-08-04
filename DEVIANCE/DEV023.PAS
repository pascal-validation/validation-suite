{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.7-10, FILE=DEV023, CLASS=DEVIANCE, LEVEL=0                }
{                                                                    }
{:This test deviates since compatible-strings must have the same     }
{:number of components.                                              }
{                                                                    }
{ The Pascal Standard states that string types are compatible if     }
{ they have the same number of components. Some processors may allow }
{ assignment of one string type to another, padding out with spaces  }
{ or truncating characters if they are not of the same lengths. All  }
{ the cases below should be detected.                                }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Spaces inserted in writes, and comment revised. Moved      }
{         DEVIATES to end of program.                                }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV023(output);
var
   string1 : packed array[1..4] of char;
   string2 : packed array[1..6] of char;
begin
   string1:='AB';       { 1-pad with spaces}
   writeln(' CASE 1 : ', string1);
   string1:='ABCD';
   string2:=string1;    { 2-what happens here}
   writeln(' CASE 2 : ', string2);
   string1:='ABCDEFG';  { 3-what happens here}
   writeln(' CASE 3 : ', string1);
   writeln(' DEVIATES...6.1.7-10 (DEV023)')
end.
