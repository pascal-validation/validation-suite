{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.2.1-4, FILE=DEV032, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This program contains a label that is not specified.               }
{                                                                    }
{ The label-declaration-part shall specify all labels that prefix a  }
{ statement in the corresponding statement-part.                     }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment redrafted and write extended. Was previously       }
{         6.2.1-3.                                                   }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV032(output);
begin
   3: writeln(' DEVIATES...6.2.1-4 (DEV032)')
end.
