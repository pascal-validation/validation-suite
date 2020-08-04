{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.2-10, FILE=CONF054, CLASS=CONFORMANCE, LEVEL=0          }
{                                                                    }
{:This test checks that arrays, whose component-types are            }
{:file-types, behave as required.                                    }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF054(output);
type
   oneseven = (one,two,three,four,five,six,seven);
   filetype = file of oneseven;
var
   arrayfile : array[one..six] of filetype;
   fail : boolean;
   enum : oneseven;

procedure initialise(var f : filetype; element : oneseven);
   begin
   rewrite(f);
   f^ := element;
   put(f);
   reset(f)
   end;

procedure incrementcontents(var f : filetype);
   var
      element : oneseven;
   begin
   element := f^;
   rewrite(f);
   write(f,succ(element));
   reset(f)
   end;

procedure checkcontents(var firstfile,secondfile : filetype;
                              element : oneseven);
   begin
   if (succ(firstfile^) <> secondfile^)
         or (firstfile^ <> succ(element)) then
      fail := true
   end;

begin
   fail := false;
   for enum := one to six do
      begin
      initialise(arrayfile[enum],enum);
      incrementcontents(arrayfile[enum])
      end;
   for enum := one to five do
      checkcontents(arrayfile[enum],arrayfile[succ(enum)],enum);
   get(arrayfile[six]);
   if not eof(arrayfile[six]) then
      fail := true;
   if fail then
      writeln(' FAIL...6.4.3.2-10 (CONF054)')
   else
      writeln(' PASS...6.4.3.2-10 (CONF054)')
end.
