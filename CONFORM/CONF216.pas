{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.3-28, FILE=CONF216, CLASS=CONFORMANCE, LEVEL=0          }
{                                                                    }
{:This is checks that the long form of dispose can follow the short  }
{:form of new.                                                       }
{                                                                    }
{ Modification History :                                             }
{   V5.2: Test reclasified from PRETEST (6.6.5.3-17).                }
{                                                                    }
{                                                                    }
{ Comment (Prospero Software, September 1998):  This program is      }
{   considered to be invalid, see 6.6.5.3 in ISO 7185 (equivalent    }
{   in ISO 10206 is 6.7.5.3) concerning the long form of dispose.    }
{   Though many implementations will "pass" the test, the practical  }
{   danger is that it would often lead to heap leakage.              }
{                                                                    }

program CONF216(output);
type
   tagtype1 = boolean;
   tagtype2 = 1..2;
   tagtype3 = 3..4;
   rec = record
	    case tag1 : tagtype1 of
	    false : (q : integer);
	    true  : (case tag2 : tagtype2 of
		     1 : (b1,b2 : boolean);
		     2 : (case tag3 : tagtype3 of
			  3 : (r : boolean);
			  4 : (s,t : integer)))
	 end;
var
   ptr : ^ rec;
begin
   new(ptr);
   with ptr^ do
      begin
      tag1 := true;
      tag2 := 2;
      tag3 := 3;
      end;
   dispose(ptr,true,2,3);
   writeln(' PASS...6.6.5.3-28 (CONF216)')
end.
