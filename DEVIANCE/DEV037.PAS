{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.2.1-9, FILE=DEV037, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This test checks that the type-definition-part and                 }
{:variable-declaration-part cannot be repeated in a block.           }
{                                                                    }
{ Some processors may require that declaration-parts appear in a     }
{ specific order but permit repetitions of the sequence.             }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Comment changed.                                           }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV037(output);
type
   stackptr = ^ stackcell;
   stackcell = record i:integer; next:stackptr end;
var
   topofstack,bottomofstack:stackptr;
   freestackcells:stackptr;
procedure initstack;
begin
   topofstack:=nil; bottomofstack:=nil; freestackcells:=nil
end;
type
   listptr=^listcell;
   listcell=record c:char; p:listptr end;
var
   freecells:listptr;
procedure initfreelistcells;
begin freecells:=nil end;
begin { Main program}
   initstack; initfreelistcells;
   writeln(' DEVIATES...6.2.1-9 (DEV037)')
end.
