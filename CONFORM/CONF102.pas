{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.1-3, FILE=CONF102, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This program tests that files may be passed to procedures as       }
{:parameters.                                                        }
{                                                                    }
{ A file is a type, and any type may be passed as a parameter.       }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Program parameter removed.                                 }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF102(output);
type
   fyle = text;
var
   elyf : fyle;
procedure test(var anyfile : fyle);
begin
   rewrite(anyfile);
   writeln(anyfile,'THIS FILE WAS A PARAMETER');
   writeln(' PASS...6.6.3.1-3 (CONF102)')
end;
begin
   test(elyf)
end.
