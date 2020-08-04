{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.3-21, FILE=DEV078, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:This test contains a variant record in which one of the            }
{:case-constants is not compatible with the tag-type.                }
{                                                                    }
{ The Standard states that the type of each case-constant in the     }
{ case-constant-list of a variant of a variant-part must be          }
{ compatible with the tag-type of the variant-selector of the        }
{ variant-part. In this program the case-constant '0' is not of the  }
{ type boolean and should therefore cause the program to be          }
{ rejected.                                                          }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV078(output);
type
    rec = record
             case bool:boolean of
                true  : (a : integer);
                false : (b : boolean);
                '0'   : (c : char)
          end;
begin
   writeln(' DEVIATES...6.4.3.3-21 (DEV078)')
end.
