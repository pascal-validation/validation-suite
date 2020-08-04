{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.3-24, FILE=DEV266, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:In a record with a fixed-part, a ';' is required before the        }
{:variant-part.                                                      }
{                                                                    }
{ Modification History :                                             }
{   V5.2: New test suggested by Visible Software.                    }
{   V5.3: Fixed a mistype/misspell of false.                         }
{                                                                    }

program DEV266(output);

var
  rec:record
        a:integer
        case select:boolean of
          true:(b:integer);
          false:(c:integer);
        end;

begin
  writeln(' DEVIATES...6.4.3.3-24 (DEV266)')
end.
