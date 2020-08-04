{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1995, Prospero Software Limited             }
{                                                                    }
{ TEST 6.9.1-18, FILE=CONF221, CLASS=CONFORMANCE, LEVEL=0            }
{                                                                    }
{:The revision of ISO 7185 in 1990 clarified the definition of       }
{:textfile input.  The file parameter is evaluated once at the       }
{:beginning of a read statement.                                     }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V5.7: New test to confirm conformance to ISO 7185:1990.          }
{                                                                    }

program CONF221(output);

var
   f: array [1..3] of text;
   i,j,k: integer;

begin
   for i := 1 to 3 do
     begin
       rewrite(f[i]);
       writeln(f[i],i:3,i:3,i:3,' ');
       reset(f[i]);
     end;
   i := 1;
   j := 1;
   k := 1;
   read(f[i+j],i,j,k);
   if (i = 2) and (j = 2) and (k = 2) then
	writeln(' PASS...6.9.1-18 (CONF221)')
   else writeln(' FAIL...6.9.1-18 (CONF221)');
end.
