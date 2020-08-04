{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.5-18, FILE=DEV216, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:This test deviates since the case-constants of a case-statement    }
{:must be distinct.                                                  }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV216(output);
const
   truealso = true;
var
   b : boolean;
   bit : integer;
begin
   b:=true;
   case b of
      true     : bit:=1;
      truealso : bit:=0
      end;
   writeln(' DEVIATES...6.8.3.5-18 (DEV216)')
end.
