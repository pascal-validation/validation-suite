{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.5-16, FILE=DEV097, CLASS=DEVIANCE, LEVEL=0                }
{                                                                    }
{:This test violates the type rules for relational-operators using   }
{:sets as operands.                                                  }
{                                                                    }
{ A relational-operator between values of a set type can either have }
{ compatible operands or be of the same cannonical set-of-T type. In }
{ this instance, the T is not the same (one packed, other unpacked). }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV097(output);
type
   BType  = set of boolean;
   PType  = packed set of false..true;
var
   flag:boolean; B:BType; P:PType;
begin
   B:=[true,false];
   P:=[true];
   flag:=(B >= P); { B,P, not compatible}
   writeln(' DEVIATES...6.4.5-16 (DEV097)')
end.
