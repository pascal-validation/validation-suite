{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.2.4-1, FILE=CONF047, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This program tests that a type may be defined as a subrange of     }
{:another ordinal-type (host-type).                                  }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment revised.                                           }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF047(output);
type
   colour      = (red,pink,orange,yellow,green,blue);
   somecolour  = red..green;
   century     = 1..100;
   twentyone   = -10..+10;
   digits      = '0'..'9';
   zero        = 0..0;
   logical     = false..true;
var
   tf : logical;

begin
   tf:=true;
   writeln(' PASS...6.4.2.4-1 (CONF047)')
end.
