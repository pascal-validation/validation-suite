{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.3-6, FILE=CONF060, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This test checks that nested variants are allowed with the         }
{:appropriate syntax.                                                }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Writing and comment revised. Was previously 6.4.3.3-13.    }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF060(output);
type
   a=record
       case b:boolean of
       true: (c:char);
       false: (case d:boolean of
               true: (e:char);
               false: (f:integer))
      end;
var
   g:a;
begin
   g.b:=false;
   g.d:=false;
   g.f:=1;
   writeln(' PASS...6.4.3.3-6 (CONF060)')
end.
