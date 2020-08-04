{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.1-16, FILE=DEV166, CLASS=DEVIANCE, LEVEL=0                }
{                                                                    }
{:This test contains a member-designator of the form A..B where A    }
{:and B have different types.                                        }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV166(output);
type
   dark     = (black, blue ,brown);
   light    = (yellow, white, pink);
var
   ll : set of light;
begin
   ll:=[yellow..brown];
   writeln(' DEVIATES...6.7.1-16 (DEV166)')
end.
