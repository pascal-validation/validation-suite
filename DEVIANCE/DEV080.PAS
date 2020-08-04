{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.3-23, FILE=DEV080, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:This test deviates by declaring an enumerated-type within a        }
{:record, and then attempts to redefine one of the                   }
{:constant-identifiers of the enumerated-type.                       }
{                                                                    }
{ Although the scope of variables declared in a record-type is the   }
{ record-type itself, this is not the case for an enumerated type.   }
{ The scope of the identifiers of an enumerated-type is the          }
{ containing block.                                                  }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test from Paul Gilmartin.                              }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV080(output);
var
   rec : record
            enum : (one,two,three)
         end;
   one : char;
begin
   writeln(' DEVIATES...6.4.3.3-23 (DEV080)')
end.
