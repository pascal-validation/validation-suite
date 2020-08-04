{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9.1-14, FILE=IMDEFB44,                                      }
{ CLASS=IMPLEMENTATIONDEFINEDBEHAVIOUR, LEVEL=0                      }
{                                                                    }
{:Check the reading of small real values.                            }
{                                                                    }
{ Modification History :                                             }
{   V5.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program IMDEFB44(output);
var
        f: text;
        r, x: real;
        i, count: integer;
        fail: boolean;
begin
     x := 1.0;
     count := 0;
     rewrite(f);
     repeat
        writeln(f,'1.0e-', count:1);
        count := count + 1;
        x := x / 10.0;
     until (x=0.0) or (x=x/10.0);
     reset(f);
     x := 1.0;
     fail := false;
     for i:= 1 to count do
        begin
        read(f, r);
        if (0.999*x > r) or (1.001*x < r) then
           fail := true;
        x := x / 10.0
        end;
     if fail then
        writeln(' FAIL...6.9.1-14 (IMDEFB44)')
     else
       begin
         writeln(' OUTPUT FROM TEST...6.9.1-14');
         writeln(' Small real values are read correctly');
         writeln(' IMPLEMENTATION DEFINED BEHAVIOUR...6.9.1-14',
                 ' (IMDEFB44)');
       end
end.
