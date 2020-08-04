{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.3-3, FILE=CONF057, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This test checks that an empty record can be declared.             }
{                                                                    }
{ Since this is the limiting case of a structured-type, some         }
{ processors may mis-handle it.  The following program illustrates   }
{ one of the uses.                                                   }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment revised and test slightly extended.                }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF057(output);
type
   statuskind  = (defined,undefined);
   emptykind   = record end;
var
   empty : emptykind;
   number: record
            case status:statuskind of
               defined  : (i : integer);
               undefined: (e : emptykind)
            end;
begin
   with number do begin
      status:=defined;
      i:=7
   end;
   with number do begin
      status:=undefined
   end;
   writeln(' PASS...6.4.3.3-3 (CONF057)')
end.
