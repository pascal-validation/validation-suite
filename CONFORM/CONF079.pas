{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.5-1, FILE=CONF079, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This program simply tests that the processor conforms to the       }
{:Standard's description of type-identity.                           }
{                                                                    }
{ The Pascal Standard states that types designated at two or more    }
{ different places in the program text are identical if the same     }
{ type identifier is used at these places, or if different           }
{ identifiers are used which have been defined to be equivalent to   }
{ each other.                                                        }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment revised.                                           }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF079(output);
type
   t1 = array[1..5] of boolean;
   t2 = t1;
   t3 = t2;
var
   a : t1;
   b : t2;
   c : t3;
procedure identical(var a : t1; var b : t2; var c : t3);
begin
   a[1]:=true;
   b[1]:=false;
   c[1]:=true
end;

begin
   a[1]:=true;
   b[1]:=false;
   c[1]:=false;
   identical(a,b,c);
   identical(c,a,b);
   identical(b,c,a);
   writeln(' PASS...6.4.5-1 (CONF079)')
end.
