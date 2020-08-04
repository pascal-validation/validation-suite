{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.1-7, FILE=CONF104, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This test checks that the scope of an identifier declared in a     }
{:procedure-block does not include the procedure-heading.            }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test from Prospero.                                    }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF104(output);
type
   subrng1 = 1..1;

procedure sub1(i1 : subrng1);
var
   subrng1 : char;
begin
   i1 := 1;
   subrng1 := 'A'
end;


begin
   sub1(1);
   writeln(' PASS...6.6.3.1-7 (CONF104)')
end.
