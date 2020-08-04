{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.3-8, FILE=EXTEND8, CLASS=EXTENSION, LEVEL=0               }
{                                                                    }
{:Check that trailing underscores are not permitted.                 }
{                                                                    }
{ This test is a deviance test for Extended Pascal, but an extension }
{ test for unextended Pascal.                                        }
{                                                                    }
{ Modification History :                                             }
{   V5.3: New Test.                                                  }
{   V5.4: Added space to writeln string for control.                 }
{                                                                    }

program EXTEND8(output);
const
   aa_ = 1;
begin
   writeln(' EXTEND...6.1.3-8 (EXTEND8)')
end.
