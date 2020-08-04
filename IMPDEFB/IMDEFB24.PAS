{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.1-8, FILE=IMDEFB24, CLASS=IMPLEMENTATIONDEFINEDBEHAVIOUR, }
{ LEVEL=0                                                            }
{                                                                    }
{:This test checks that procedures may be nested to 15 levels.       }
{                                                                    }
{ The test may detect a small processor limit.  The limit may arise  }
{ due to failure of a register allocation scheme, a limited reserved }
{ size for a display, or a field set aside for lexical level         }
{ information, or some combination of these.                         }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Altered to add better execution test. Writes revised -     }
{         PASS changed to QUALITY, and FAIL elaborated. Was          }
{         previously 6.6.1-7.                                        }
{   V4.2: Short-form message included in output.                     }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program IMDEFB24(output);
var
   v0, ans:integer;

procedure p1;
var
   v1: integer;
   procedure p2;
   var
      v2: integer;
      procedure p3;
      var
         v3: integer;
         procedure p4;
         var
            v4: integer;
            procedure p5;
            var
               v5: integer;
               procedure p6;
               var
                  v6: integer;
                  procedure p7;
                  var
                     v7: integer;
                     procedure p8;
                     var
                        v8: integer;
                        procedure p9;
                        var
                           v9: integer;
                           procedure p10;
                           var
                              v10: integer;
                              procedure p11;
                              var
                                 v11: integer;
                                 procedure p12;
                                 var
                                    v12: integer;
                                    procedure p13;
                                    var
                                       v13: integer;
                                       procedure p14;
                                       var
                                          v14: integer;
                                          procedure p15;
                                          begin
                                             ans := v14 + v13
                                          end;
                                       begin
                                          v14 := v13 + v12;
                                          p15
                                       end;
                                    begin
                                       v13 := v12 + v11;
                                       p14
                                    end;
                                 begin
                                    v12 := v11 + v10;
                                    p13
                                 end;
                              begin
                                 v11 := v10 + v9;
                                 p12
                              end;
                           begin
                              v10 := v9 + v8;
                              p11
                           end;
                        begin
                           v9 := v8 + v7;
                           p10
                        end;
                     begin
                        v8 := v7 + v6;
                        p9
                     end;
                  begin
                     v7 := v6 + v5;
                     p8
                  end;
               begin
                  v6 := v5 + v4;
                  p7
               end;
            begin
               v5 := v4 + v3;
               p6
            end;
         begin
            v4 := v3 + v2;
            p5
         end;
      begin
         v3 := v2 + v1;
         p4
      end;
   begin
      v2 := v1 + v0;
      p3
   end;
begin
   v1 := v0 + 1;
   p2
end;

begin
 v0 := 0;
 p1;
 if ans = 610 then
   begin
     writeln(' OUTPUT FROM TEST...6.6.1-8');
     writeln(' Procedures may be nested to at least 15 levels');
     writeln(' IMPLEMENTATION DEFINED BEHAVIOUR...6.6.1-8 (IMDEFB24)');
   end
 else
    writeln(' FAIL...6.6.1-8 (IMDEFB24)')
end.
