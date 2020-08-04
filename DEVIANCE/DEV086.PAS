{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.5-14, FILE=DEV086, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:This test deviates since the component-type of a file-type should  }
{:not include a file-type.                                           }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV086(output);
type
    rec = record
             f1 : text;
             f2 : file of char;
          end;
var
   f3 : file of rec;
begin
   writeln(' DEVIATES...6.4.3.5-14 (DEV086)')
end.
