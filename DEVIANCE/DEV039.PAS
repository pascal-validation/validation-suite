{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.2.2-8, FILE=DEV039, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:The Pascal Standard requires that the defining-point of an         }
{:identifier shall precede all applied occurrences of that           }
{:identifier, with the exception of pointer-type declarations.       }
{                                                                    }
{ The scope of an identifier is its whole region, which in most      }
{ cases is a block. The rules prohibit a reference to an outer       }
{ identifier of the same spelling preceding the defining-point.  The }
{ test includes two exactly similar violations of the rules in the   }
{ use of the identifiers red and violet in the declarations of m and }
{ n.                                                                 }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Comment changed.                                           }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV039(output);
const
   red = 1;
   violet = 2;
procedure ouch;
const
   m = red;
   n = violet;
type
   a = array[m..n] of integer;
var
   v : a;
   colour : (yellow,green,blue,red,indigo,violet);
begin
   v[1]:=1;
   colour:=red
end;
begin
   ouch;
   writeln(' DEVIATES...6.2.2-8 (DEV039)')
end.
