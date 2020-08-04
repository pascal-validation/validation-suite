{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.2.2-3, FILE=CONF027, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This test checks the scope conformance of pointer-types.           }
{                                                                    }
{ This program is similar to 6.2.2-6, however a type identifier, say }
{ T, which specifies the domain of a pointer type ^T, is permitted   }
{ to have its defining point anywhere in the type definition part in }
{ which ^T occurs. Thus in this example, (node=integer)s' scope is   }
{ excludedfrom the type definitionof ouch.                           }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Real changed to integer.                                   }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF027(output);
type
   node = integer;
procedure ouch;
type
   p = ^node;
   node = boolean;
var
   ptr : p;
begin
   new(ptr);
   ptr^:=true;
   writeln(' PASS...6.2.2-3 (CONF027)')
end;
begin
   ouch
end.

