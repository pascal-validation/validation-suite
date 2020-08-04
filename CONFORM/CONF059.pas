{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.3-5, FILE=CONF059, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This test checks that a record with an active empty variant can be }
{:assigned to another record of the same type.                       }
{                                                                    }
{ The value of a record exists when all of its components have       }
{ values attributed to them. An empty field-list has no components.  }
{                                                                    }
{ Modification History :                                             }
{   V4.0: Revised to use empty variant rather than empty record.     }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF059(output);
type
   statuskind  = (defined,undefined);
   emptykind   = record
                    case tag : boolean of
                       true,false: ()
                 end;
var
   empty : emptykind;
   number: record
            case status:statuskind of
               defined  : (i : integer);
               undefined: (e : emptykind)
            end;
begin
   empty.tag := true;
   with number do
   begin
      status:=undefined;
      e:=empty
   end;
   writeln(' PASS...6.4.3.3-5 (CONF059)')
end.
