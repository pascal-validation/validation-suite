{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.6.2-15, FILE=DEV157, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:This test checks that use of the standard function abs with other  }
{:than an integer or real parameter is rejected.                     }
{                                                                    }
{ Thanks to Peter Robertson for the suggestion.                      }
{                                                                    }
{ Modification History :                                             }
{   V5.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV157(output);
type
  falsenumber = (one, two, three);
var
  num : falsenumber;
begin
  num := two;
  if abs(num) <> one then num := three;
  writeln(' DEVIATES...6.6.6.2-15 (DEV157)');
end.
