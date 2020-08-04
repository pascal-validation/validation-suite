{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.2.5-4, FILE=DEV181, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test checks that file-comparisons are not allowed.            }
{                                                                    }
{ The semantics of this situation are particularly ill-defined, and  }
{ not within Standard Pascal.                                        }
{                                                                    }
{ Modification History :                                             }
{   V4.0: Test altered so that the file-buffers are defined.         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV181(output);
var
   f1,f2:text;
begin
   rewrite(f1);   rewrite(f2);
   writeln(f1,'F1');   reset(f1);
   writeln(f2,'F2');   reset(f2);
   if f1=f2 then
      writeln(' DEVIATES...6.7.2.5-4 (DEV181), FILE CONTENTS COMPARED')
   else
      writeln(' DEVIATES...6.7.2.5-4 (DEV181),',
              ' FILE DESCRIPTORS COMPARED (DEV181)')
end.
