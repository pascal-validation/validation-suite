{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.6.5-1, FILE=CONF141, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This program tests the functions eof and eoln.                     }
{                                                                    }
{ Tests  6.4.3.5-2, 6.4.3.5-3, 6.6.5.2-1 and 6.6.5.2-3 are also      }
{ conformance tests incorporating use of these functions.            }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Program parameter and a readln removed also writes         }
{         changed.                                                   }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF141(output);
var
   fyle      : text;
   counter,n : integer;
begin
   counter:=0;
   rewrite(fyle);
   if eof(fyle) then
      counter:=counter+1
   else
      writeln(' FAIL...6.6.6.5-1, EOF FUNCTION(1) (CONF141)');
   writeln(fyle,'1 2 3');
   reset(fyle);
   if eof(fyle) then
      writeln(' FAIL...6.6.6.5-1, EOF FUNCTION(2) (CONF141)')
   else
      counter:=counter+1;
   if eoln(fyle) then
      writeln(' FAIL...6.6.6.5-1, EOLN FUNCTION(1) (CONF141)')
   else
      counter:=counter+1;
   read(fyle,n); read(fyle,n); read(fyle,n);
   if not eoln(fyle) then
      writeln(' FAIL...6.6.6.5-1, EOLN FUNCTION(2) (CONF141)')
   else
      if counter=3 then
         writeln(' PASS...6.6.6.5-1 (CONF141)')
end.
