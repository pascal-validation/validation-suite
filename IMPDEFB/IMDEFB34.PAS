{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.4-2, FILE=IMDEFB34,                                     }
{ CLASS=IMPLEMENTATIONDEFINEDBEHAVIOUR, LEVEL=0                      }
{                                                                    }
{:This test checks that at least 24 nested if-statements are         }
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

program IMDEFB34(output);
var
   i, j, sum: integer;
begin
   i := 1;
   j := 2;
   sum := 0;
   if i > j then
     begin
     end
   else
     begin
     sum := sum + 1;
     if i > j then
       begin
       end
     else
       begin
       sum := sum + 1;
       if i > j then
         begin
         end
       else
         begin
         sum := sum + 1;
         if i > j then
           begin
           end
         else
           begin
           sum := sum + 1;
           if i > j then
             begin
             end
           else
             begin
             sum := sum + 1;
             if i > j then
               begin
               end
             else
               begin
               sum := sum + 1;
               if i > j then
                 begin
                 end
               else
                 begin
                 sum := sum + 1;
                 if i > j then
                   begin
                   end
                 else
                   begin
                   sum := sum + 1;
                   if i > j then
                     begin
                     end
                   else
                     begin
                     sum := sum + 1;
                     if i > j then
                       begin
                       end
                     else
                       begin
                       sum := sum + 1;
                       if i > j then
                         begin
                         end
                       else
                         begin
                         sum := sum + 1;
                         if i > j then
                           begin
                           end
                         else
                           begin
                           sum := sum + 1;
                           if i > j then
                             begin
                             end
                           else
                             begin
                             sum := sum + 1;
                             if i > j then
                               begin
                               end
                             else
                               begin
                               sum := sum + 1;
                               if i > j then
                                 begin
                                 end
                               else
                                 begin
                                 sum := sum + 1;
                                 if i > j then
                                   begin
                                   end
                                 else
                                   begin
                                   sum := sum + 1;
                                   if i > j then
                                     begin
                                     end
                                   else
                                     begin
                                     sum := sum + 1;
                                     if i > j then
                                       begin
                                       end
                                     else
                                       begin
                                       sum := sum + 1;
                                       if i > j then
                                         begin
                                         end
                                       else
                                         begin
                                         sum := sum + 1;
                                         if i > j then
                                           begin
                                           end
                                         else
                                           begin
                                           sum := sum + 1;
                                           if i > j then
                                             begin
                                             end
                                           else
                                             begin
                                             sum := sum + 1;
                                             if i > j then
                                               begin
                                               end
                                             else
                                               begin
                                               sum := sum + 1;
                                               if i > j then
                                                 begin
                                                 end
                                               else
                                                 begin
                                                 sum := sum + 1;
                                                 if i > j then
                                                   begin
                                                   end
                                                 else
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
     writeln(' FAIL...6.8.3.4-2 (IMDEFB34)')
   else
     begin
       writeln(' OUTPUT FROM TEST...6.8.3.4-2');
       writeln(' At least 24 nested if-statements are permitted');
       writeln(' IMPLEMENTATION DEFINED BEHAVIOUR...6.8.3.4-2',
               ' (IMDEFB34)');
     end
end.
