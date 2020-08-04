{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.3-5, FILE=EXTEND5, CLASS=EXTENSION, LEVEL=0               }
{                                                                    }
{:Check that underscore is not a token separator.                    }
{                                                                    }
{ This test is a deviance test for Extended Pascal, but an extension }
{ test for unextended Pascal.                                        }
{                                                                    }
{ Modification History :                                             }
{   V5.3: New Test.                                                  }
{   V5.4: Added space to writeln string for control.                 }
{                                                                    }

program EXTEND5(output);
const
   aa = 1; {comment}_{comment}
begin
   writeln(' EXTEND...6.1.3-5 (EXTEND5)')
end.
