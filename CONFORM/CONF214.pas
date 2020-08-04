{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.5-23, FILE=CONF214, CLASS=CONFORMANCE, LEVEL=0          }
{                                                                    }
{:The case-index of the case statement is an expression and hence no }
{:subrange check can be performed upon the value.                    }
{                                                                    }
{ Modification History :                                             }
{   V5.2: New test suggested by Willem Wakker of ACE.                }
{                                                                    }

program CONF214(output);

var i,j : 99..100;

begin
  i := 100;
  j := 100;
  case i+j of
    200: writeln(' PASS...6.8.3.5-23 (CONF214)');
  end;
end.
