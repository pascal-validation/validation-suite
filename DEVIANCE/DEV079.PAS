{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.3-22, FILE=DEV079, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:This test deviates since the case-constants of a variant record    }
{:must all be distinct.                                              }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV079(output);
type
    rec = record
             case bool:boolean of
                true  : (a : integer);
                true  : (b : boolean);
                false : (c : char )
          end;
begin
   writeln(' DEVIATES...6.4.3.3-22 (DEV079)')
end.
