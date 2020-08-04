{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.9-3, FILE=CONF021, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This test includes a variety of curious comments which exercise    }
{:the lexical analyser of a Pascal processor.                        }
{                                                                    }
{ All are correct Pascal, and the program should be acceptable to a  }
{ Pascal processor. Processors are not allowed to ignore one form of }
{ comment delimiter unless they do not have the appropriate          }
{ characters in their set.                                           }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test derived from DP7185.                              }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF021(output);
var
   i:0..10;
begin
   i:=0;    (* *)
   i:=i+1;  (* **)
   i:=i+1;  (* ***)
   i:=i+1;  (* ****)
   i:=i+1;  (* (*)
   i:=i+1;  {}
   i:=i+1;  {******}
   i:=i+1;  (**)
   i:=i+1;  { {{ (* (*** }
   i:=i+1;  (* (*(* { ** ) *)
   i:=i+1;
   if (((i=10))) then
      writeln(' PASS...6.1.9-3 (CONF021)')
   else
      writeln(' FAIL...6.1.9-3 (CONF021)')
end.
