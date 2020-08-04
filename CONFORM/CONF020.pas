{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.9-2, FILE=CONF020, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This test includes a valid comment which may confuse a processor   }
{:with the ( * ) sequence.                                           }
{                                                                    }
{ Processors are not allowed to ignore one form of comment delimiter }
{ unless they do not have the appropriate characters in their set.   }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test derived from DP7185.                              }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF020(output);
var
   b:boolean;
begin
   b := false;
   (*)
   b := true;
   (* The above 'statement' is commentary. *)
   if b then
      writeln(' FAIL...6.1.9-2 (CONF020)')
   else
      writeln(' PASS...6.1.9-2 (CONF020)')
end.
