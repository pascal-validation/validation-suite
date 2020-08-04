{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1995, Prospero Software Limited             }
{                                                                    }
{ TEST 6.4.3.3-25, FILE=CONF217, CLASS=CONFORMANCE, LEVEL=0          }
{                                                                    }
{:This program tests that enumerations and forward pointer           }
{:declarations are accepted as types of record fields.               }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V5.7: New test suggested by Peter Goetz.  A record field can     }
{         have any type permitted by type-denoter, and these types   }
{         should therefore be handled correctly.                     }
{                                                                    }

program CONF217(output);
type
   rectype  = record
		 shape: (triangle,rectangle,square,circle);
		 place: ^ location;
	      end;
   location = 0..99;
var
   recvar: rectype;
   chkvar: integer;

procedure check (frec: rectype);
   begin
      chkvar := ord(frec.shape) + frec.place^;
   end;

begin
   recvar.shape := rectangle;
   new(recvar.place);
   recvar.place^ := 50;
   check(recvar);
   IF chkvar = 51 THEN writeln(' PASS...6.4.3.3-25 (CONF217)')
   ELSE writeln(' FAIL...6.4.3.3-25 (CONF217)');
end.
