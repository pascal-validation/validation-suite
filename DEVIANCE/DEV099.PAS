{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.5-18, FILE=DEV099, CLASS=DEVIANCE, LEVEL=0                }
{                                                                    }
{:This test checks that structurally-identical types are not         }
{:regarded as identical.                                             }
{                                                                    }
{ The only difference between this test and  6.4.5-8 is that both    }
{ arrays are now packed.                                             }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test from Paul Gilmartin.                              }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV099(output);
type
   urrayone = packed array[1..10] of char;
   urraytwo = packed array[1..10] of char;
var
   i : 1..10;
   arraytwo : urraytwo;
procedure test(var urray : urrayone);
begin
   writeln(' DEVIATES...6.4.5-18 (DEV099)')
end;
begin
   for i:= 1 to 10 do arraytwo[i]:='Z';
   { The two arraytypes, urrayone and urraytwo, are not identical
     and hence the call to 'test' should not be acceptable.}
   test(arraytwo)
end.
