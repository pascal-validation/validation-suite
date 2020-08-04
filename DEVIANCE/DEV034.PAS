{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.2.1-6, FILE=DEV034, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This test contains a label which has been declared but not sited.  }
{                                                                    }
{ The label-declaration-part shall specify all labels that prefix a  }
{ statement in the corresponding statement-part. This program        }
{ specifies a label which does not prefix such a statement, which is }
{ not allowed.                                                       }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment redrafted and write extended. Was previously       }
{         6.2.1-5.                                                   }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV034(output);
label
   9;
begin
   writeln(' DEVIATES...6.2.1-6 (DEV034)')
end.
