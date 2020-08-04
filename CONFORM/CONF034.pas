{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.1-1, FILE=CONF034, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This program tests to see that pointer-types can be declared       }
{:anywhere in the type-definition-part.                              }
{                                                                    }
{ This freedom is explicitly permitted in the Standard.              }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Real changed to integer.                                   }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF034(output);
type
   ptr1     = ^ polar;
   polar    = record r,theta : integer end;
   purelink = ^ purelink;
   ptr2     = ^ person;
   ptr3     = ptr2;
   person   = record
                  mother,father : ptr2;
                  firstchild    : ptr2;
                  nextsibling   : ptr3
              end;
begin
   writeln(' PASS...6.4.1-1 (CONF034)')
end.
