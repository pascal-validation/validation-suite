{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.3-11, FILE=ERR37T, CLASS=ERRORHANDLING, LEVEL=0,        }
{ NUMBER=43                                                          }
{                                                                    }
{:This program is illegal since it uses the value of a pointer after }
{:a call of dispose.                                                 }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR37T(output);
type
   pointer = ^integer;
var
   p : pointer;
begin
   writeln(' ERROR...6.6.5.3-11 (ERR37T)');
   new(p);
   p^ := 10;
   dispose(p);
   if p = nil then
      writeln(' POINTER = NIL')
   else
      if p^ = 10 then
         writeln(' POINTER STILL USABLE')
      else
         writeln(' POINTER VALUE UNKNOWN');
   writeln(' ERROR NOT DETECTED...6.6.5.3-11 (D.43)')
end.
