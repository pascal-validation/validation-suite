{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.2.1-10, FILE=DEV038, CLASS=DEVIANCE, LEVEL=0                }
{                                                                    }
{:A processor should not allow multiple constant-definition-parts    }
{:and type-definition-parts before a var part.                       }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test to detect multiple const and type parts in        }
{         declarations.                                              }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV038(output);
const nullstring='        ';
type  string8   =packed array[1..8] of char;
const linelength=80;
type
   lineindex=1..80;
   line=array[lineindex] of char;
var
   l:line; s:string8; i:lineindex;
begin
   s:=nullstring;
   for i:=1 to linelength do l[i]:=' ';
   writeln(' DEVIATES...6.2.1-10 (DEV038)')
end.
