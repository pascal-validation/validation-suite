{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.2.3-5, FILE=DEV057, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This program illustrates that two textually identical              }
{:enumerated-types in nested scopes should introduce distinct types. }
{                                                                    }
{ Hence the assignment in 'p' is invalid.                            }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV057(output);
var a: (male, female);
procedure p;
   var b: (male, female);
   begin
   b := female;
   a := b
   end;
begin
   a := male;
   p;
   writeln(' THE ORDINAL VALUE OF A IS ', ord(a));
   writeln(' DEVIATES...6.4.2.3-5 (DEV057)')
end.
