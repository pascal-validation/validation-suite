{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.1-4, FILE=CONF103, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This test checks the scope conformance of procedural parameters.   }
{                                                                    }
{ When a procedure (or function) with a parameter list is included   }
{ in the formal parameter list of another procedure (or function),   }
{ the identifiers in the parameter list of the procedure parameter   }
{ have defining occurences for that list and the corresponding       }
{ block for the procedure only, and not for the block of the         }
{ procedure to which it is passed. The example in this program       }
{ should be passed by the processor.                                 }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Last line is now: conforms(alsoconforms) Test was          }
{         previously 6.6.3.1-5.                                      }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF103(output);
var
   i : integer;
procedure alsoconforms(x : integer);
begin
   writeln(' PASS...6.6.3.1-4 (CONF103)')
end;

procedure conforms(procedure alsoconforms(x : integer));
   var x : boolean;
begin
   x:=true;
   alsoconforms(1)
end;

begin
   i:=2;
   conforms(alsoconforms)
end.
