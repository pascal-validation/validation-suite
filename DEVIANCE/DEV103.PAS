{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.6-7, FILE=DEV103, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:Two distinct record types are not assignment compatible, even if   }
{:they are structurally identical and even if their declarations are }
{:textually identical.                                               }
{                                                                    }
{ This program tests that this deviation is detected by attempting   }
{ to assign a record value to a type that is such a smidgin          }
{ different.  Processors that implement so-called structural         }
{ compatibility will deviate. Correct processors will detect the     }
{ error.                                                             }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV103(output);
type
   r1 = record x,y:integer end;
   r2 = record x,y:integer end;
var
   a : r1;
   b : r2;
begin
   with a do begin x:=0; y:=1 end;
   b := a;
   writeln(' DEVIATES...6.4.6-7 (DEV103)')
end.
