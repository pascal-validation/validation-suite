{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.2.2-9, FILE=DEV056, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This program is erroneous since it relies on the indexing of a     }
{:character string literal.                                          }
{                                                                    }
{ Although character-strings have the type attributes of an array,   }
{ they are not variables and should not be indexable.                }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV056(output);
var
   ch: char;
begin
   ch := 'HELLO'[3];
   writeln(' DEVIATES...6.4.2.2-9 (DEV056)')
end.
