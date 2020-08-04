{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.5-5, FILE=CONF083, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This test checks the type-compatibility rules for sets.            }
{                                                                    }
{ Set-types are compatible if their base-types are compatible which  }
{ means identical or subranges thereof, and are jointly packed or    }
{ unpacked.  This test tries several combinations which should be    }
{ allowed.                                                           }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Old test completely rewritten.                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF083(output);
type
   colour  = (red,pink,orange,yellow,green,blue,brown);
   CharSet = set of char;
var
   cseti  : CharSet;
   cset1  : set of char;      { different, but compatible with above }
   cset2  : set of 'A'..'Z';
   cset3  : set of '0'..'9';
   eset1  : set of colour;
   eset2  : set of red..orange;
   eset3  : set of orange..brown;
begin
   cseti:=['0'..'9'];
   cset1:=[]; cset2:=['A','Z']; cset3:=['0'..'9'];
   eset1:=[]; eset2:=[orange]; eset3:=[orange];
   if (cseti+cset1 = (cset3-cset2)*cseti) and
      (eset1+eset2 = eset3-eset1)
   then
      writeln(' PASS...6.4.5-5 (CONF083)')
   else
      writeln(' FAIL...6.4.5-5 (CONF083)')
end.
