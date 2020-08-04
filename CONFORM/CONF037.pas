{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.2.2-3, FILE=CONF037, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This test checks that the required constant identifiers, true and  }
{:false, have been correctly enumerated.                             }
{                                                                    }
{ The Pascal Standard states that type boolean shall have            }
{ enumeration values which are denoted by false and true, such that  }
{ false is the predecessor of true.  It also states that the ord of  }
{ these values are 0 and 1 respectively.                             }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Comment changed.                                           }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF037(output);
begin
   if (pred(true)=false) and (succ(false)=true) and
      (ord(false)=0) and (ord(true)=1) and
      (false < true)  and (ord(not false)=1) then
      writeln(' PASS...6.4.2.2-3 (CONF037)')
   else
      writeln(' FAIL...6.4.2.2-3 (CONF037)')
end.
