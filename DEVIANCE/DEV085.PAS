{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.5-13, FILE=DEV085, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:This test deviates since the component-type of a file-type should  }
{:not include a file-type.                                           }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV085(output);
var
   f1 : file of text;
begin
   writeln(' DEVIATES...6.4.3.5-13 (DEV085)')
end.
