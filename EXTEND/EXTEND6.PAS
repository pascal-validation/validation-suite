{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.3-6, FILE=EXTEND6, CLASS=EXTENSION, LEVEL=0               }
{                                                                    }
{:Check that adjacent underscores are not permitted.                 }
{                                                                    }
{ This test is a deviance test for Extended Pascal, but an extension }
{ test for unextended Pascal.                                        }
{                                                                    }
{ Modification History :                                             }
{   V5.3: New Test.                                                  }
{   V5.4: changed comment on line 5 to read FILE=EXTEND6             }
{       : Added space to writeln string for control.                 }
{                                                                    }

program EXTEND6(output);
const
   a__a = 1;
begin
   writeln(' EXTEND...6.1.3-6 (EXTEND6)')
end.
