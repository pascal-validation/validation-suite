{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.7-12, FILE=DEV025, CLASS=DEVIANCE, LEVEL=0                }
{                                                                    }
{:A string, which is not a variable, cannot be indexed.              }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV025(output);
const
   s = ' DEVIATES...6.1.7-12 (DEV025),';
begin
   if s[2] <> 'D' then
      writeln(' DEVIATES...6.1.7-12 (DEV025)',
              'STRING CONST INDEXING DEVIANCE ')
   else
      writeln(s, ' STRING CONST INDEXING')
end.
