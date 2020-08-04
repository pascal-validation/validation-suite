{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.4-1, FILE=CONF077, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This program simply tests that pointer-types are permitted.        }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Dereferencing included.  Extended to include ptr7, ptr8    }
{         and ptr9.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF077(output);
type
   sett     = set of 1..2;
   urray    = array[1..3] of integer;
   rekord   = record
               a : integer;
               b : boolean
              end;
   ptr10    = ^sett;
   pureptr  = ^pureptr;
var
   ptr1  : ^integer;
   ptr2  : ^real;
   ptr3  : ^boolean;
   ptr4  : ^sett;
   ptr5  : ^urray;
   ptr6  : ^rekord;
   ptr7  : ^char;
   ptr8  : pureptr;
   ptr9  : ptr10;
begin
   new(ptr1);
   new(ptr2);
   new(ptr3);
   new(ptr4);
   new(ptr5);
   new(ptr6);
   new(ptr7);
   new(ptr8);
   new(ptr9);
   ptr1^ := 1;
   ptr2^ := 3.14;
   ptr3^ := true;
   ptr4^ := [1,2];
   ptr5^[1] := 1;
   ptr6^.a := 1;
   ptr6^.b := true;
   ptr7^ := 'C';
   ptr8^ := nil;
   ptr9^ := [1];
   writeln(' PASS...6.4.4-1 (CONF077)')
end.

