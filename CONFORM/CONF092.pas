{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.1-1, FILE=CONF092, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This program simply tests the syntax for procedures.               }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF092(output);
var
   a : integer;
   b : real;
procedure withparameters(g : integer; h : real);
var
   c : integer;
   d : real;
begin
   c:=g;
   d:=h
end;

procedure parameterless;
begin
   write(' PASS...6.6.1-1 (CONF092)')
end;

begin
   a:=1;
   b:=2;
   withparameters(a,b);
   parameterless;
   writeln
end.
