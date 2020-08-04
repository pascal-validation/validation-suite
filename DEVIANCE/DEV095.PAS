{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.5-13, FILE=DEV095, CLASS=DEVIANCE, LEVEL=0                }
{                                                                    }
{:This test checks that structurally-identical array-types which are }
{:even textually identical in their declarations are not considered  }
{:identical.                                                         }
{                                                                    }
{ The test is similar to 6.4.5-8, but is repeated to ensure that     }
{ idiosyncratic behaviour for arrays of char does not mask effects   }
{ for arrays of other component types.                               }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Comment changed.                                           }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV095(output);
type
   index = 1..10;
   urrayone = array[index] of boolean;
   urraytwo = array[index] of boolean;
var
   arraytwo : urraytwo;
procedure test(var urray : urrayone);
begin
   writeln(' DEVIATES...6.4.5-13 (DEV095)')
end;
begin
   { The two types urrayone and urraytwo are not identical,
     and thus the call to test should not be acceptable.}
   test(arraytwo)
end.
