{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.5-15, FILE=CONF219, CLASS=CONFORMANCE, LEVEL=0            }
{                                                                    }
{:The revision of ISO 7185 in 1990 amended the definition of         }
{:unsigned-real to allow values to be read from textfiles with       }
{:digit-sequences which exceed the local value of maxint.            }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V5.3: New test classified as IMPLEMENTATIONDEFINEDBEHAVIOUR      }
{         (IMDEFB53).                                                }
{   V5.7: Reclassified as CONFORMANCE in line with requirements      }
{         of ISO 7185:1990.  Test output amended.                    }
{                                                                    }

program CONF219(output);

var
   f: text;
   x: real;
   fail: boolean;

procedure wr;
   begin
   rewrite(f);
   writeln(f,maxint:1,'0.0');
   writeln(f,maxint:1,'0e0');
end;

begin
   wr;
   reset(f);
   readln(f,x);
   fail := false;
   if abs(x-10.0*maxint)>0.001*x then
      fail := true;
   readln(f,x);
   if abs(x-10.0*maxint)>0.001*x then
      fail := true;
   if fail then
      writeln(' FAIL...6.5.1-15 (CONF219)')
   else
      writeln(' PASS...6.1.5-15 (CONF219)');
end.
