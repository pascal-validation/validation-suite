{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.3-5, FILE=DEV048, CLASS=DEVIANCE, LEVEL=0                   }
{                                                                    }
{:This program tests that incorrect signed constants are not         }
{:permitted in other contexts than constant-definitions.             }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Write edited to conform to conventions.                    }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV048(output);
const
   dot = '.';
begin
   writeln(' DEVIATES...6.3-5 (DEV048), SIGNED CHAR (', +dot, ')')
end.
