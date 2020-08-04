{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.2-1, FILE=IMDEFB32,                                     }
{ CLASS=IMPLEMENTATIONDEFINEDBEHAVIOUR, LEVEL=0                      }
{                                                                    }
{:This test checks that at least 24 nested compound statements are   }
{:permitted.                                                         }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test.                                                  }
{   V4.2: Short-form message changed and included in output.         }
{   V5.0: Short-form and output comments changed.                    }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program IMDEFB32(output);
var sum: integer;
begin
   sum := 0;
     begin
     sum := sum + 1;
       begin
       sum := sum + 1;
         begin
         sum := sum + 1;
           begin
           sum := sum + 1;
             begin
             sum := sum + 1;
               begin
               sum := sum + 1;
                 begin
                 sum := sum + 1;
                   begin
                   sum := sum + 1;
                     begin
                     sum := sum + 1;
                       begin
                       sum := sum + 1;
                         begin
                         sum := sum + 1;
                           begin
                           sum := sum + 1;
                             begin
                             sum := sum + 1;
                               begin
                               sum := sum + 1;
                                 begin
                                 sum := sum + 1;
                                   begin
                                   sum := sum + 1;
                                     begin
                                     sum := sum + 1;
                                       begin
                                       sum := sum + 1;
                                         begin
                                         sum := sum + 1;
                                           begin
                                           sum := sum + 1;
                                             begin
                                             sum := sum + 1;
                                               begin
                                               sum := sum + 1;
                                                 begin
                                                 sum := sum + 1;
                                                   begin
                                                   sum := sum + 1
                                                   end
                                                 end
                                               end
                                             end
                                           end
                                         end
                                       end
                                     end
                                   end
                                 end
                               end
                             end
                           end
                         end
                       end
                     end
                   end
                 end
               end
             end
           end
         end
       end
     end;
if sum <> 24 then
 writeln(' FAIL...6.8.3.2-1 (IMDEFB32)')
else
 begin
   writeln(' OUTPUT FROM TEST...6.8.3.2-1');
   writeln(' At least 24 nested compound statements are permitted');
   writeln(' IMPLEMENTATION DEFINED BEHAVIOUR...6.8.3.2-1 (IMDEFB32)');
 end
end.
