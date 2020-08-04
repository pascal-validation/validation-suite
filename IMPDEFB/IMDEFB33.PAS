{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.2-2, FILE=IMDEFB33,                                     }
{ CLASS=IMPLEMENTATIONDEFINEDBEHAVIOUR, LEVEL=0                      }
{                                                                    }
{:This program checks that a procedure may have 300 statements.      }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test.                                                  }
{   V4.2: Short-form message changed and included in output.         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program IMDEFB33(output);
var
   a0, a1, a2, a3, a4, a5, a6, a7, a8, a9: integer;
procedure permute;
   begin
   a0:=a1; a1:=a2; a2:=a3; a3:=a4; a4:=a5; a5:=a6; a6:=a7;
   a7:=a8; a8:=a9; a9:=a0; a0:=a8; a8:=a4; a4:=a6; a6:=a5;
   a5:=a1; a1:=a2; a2:=a3; a3:=a9; a9:=a7; a7:=a0; a0:=a7;
   a7:=a3; a3:=a2; a2:=a9; a9:=a8; a8:=a4; a4:=a5; a5:=a1;
   a1:=a6; a6:=a0; a0:=a5; a5:=a7; a7:=a3; a3:=a4; a4:=a1;
   a1:=a9; a9:=a2; a2:=a6; a6:=a8; a8:=a0; a0:=a8; a8:=a2;
   a2:=a4; a4:=a1; a1:=a7; a7:=a5; a5:=a3; a3:=a9; a9:=a6;
   a6:=a0; a0:=a6; a6:=a3; a3:=a2; a2:=a1; a1:=a8; a8:=a7;
   a7:=a9; a9:=a5; a5:=a4; a4:=a0; a0:=a5; a5:=a4; a4:=a6;
   a6:=a3; a3:=a8; a8:=a9; a9:=a1; a1:=a2; a2:=a7; a7:=a0;
   a0:=a7; a7:=a5; a5:=a3; a3:=a4; a4:=a9; a9:=a1; a1:=a2;
   a2:=a6; a6:=a8; a8:=a0; a0:=a9; a9:=a6; a6:=a8; a8:=a2;
   a2:=a1; a1:=a3; a3:=a5; a5:=a4; a4:=a7; a7:=a0; a0:=a8;
   a8:=a7; a7:=a6; a6:=a1; a1:=a4; a4:=a2; a2:=a5; a5:=a3;
   a3:=a9; a9:=a0; a0:=a3; a3:=a9; a9:=a8; a8:=a6; a6:=a7;
   a7:=a4; a4:=a1; a1:=a5; a5:=a2; a2:=a0; a0:=a7; a7:=a3;
   a3:=a4; a4:=a2; a2:=a1; a1:=a9; a9:=a8; a8:=a6; a6:=a5;
   a5:=a0; a0:=a4; a4:=a2; a2:=a1; a1:=a8; a8:=a9; a9:=a5;
   a5:=a6; a6:=a3; a3:=a7; a7:=a0; a0:=a6; a6:=a5; a5:=a4;
   a4:=a3; a3:=a9; a9:=a8; a8:=a1; a1:=a2; a2:=a7; a7:=a0;
   a0:=a7; a7:=a9; a9:=a1; a1:=a3; a3:=a5; a5:=a2; a2:=a4;
   a4:=a6; a6:=a8; a8:=a0; a0:=a5; a5:=a2; a2:=a3; a3:=a4;
   a4:=a9; a9:=a6; a6:=a7; a7:=a8; a8:=a1; a1:=a0; a0:=a8;
   a8:=a4; a4:=a6; a6:=a9; a9:=a5; a5:=a2; a2:=a3; a3:=a1;
   a1:=a7; a7:=a0; a0:=a7; a7:=a3; a3:=a2; a2:=a1; a1:=a8;
   a8:=a4; a4:=a9; a9:=a5; a5:=a6; a6:=a0; a0:=a9; a9:=a7;
   a7:=a3; a3:=a4; a4:=a5; a5:=a1; a1:=a2; a2:=a6; a6:=a8;
   a8:=a0; a0:=a8; a8:=a2; a2:=a4; a4:=a5; a5:=a7; a7:=a9;
   a9:=a3; a3:=a1; a1:=a6; a6:=a0; a0:=a6; a6:=a3; a3:=a2;
   a2:=a5; a5:=a8; a8:=a7; a7:=a1; a1:=a9; a9:=a4; a4:=a0;
   a0:=a9; a9:=a4; a4:=a6; a6:=a3; a3:=a8; a8:=a1; a1:=a5;
   a5:=a2; a2:=a7; a7:=a0; a0:=a7; a7:=a9; a9:=a3; a3:=a4;
   a4:=a1; a1:=a5; a5:=a2; a2:=a6; a6:=a8; a8:=a0; a0:=a1;
   a1:=a6; a6:=a8; a8:=a2; a2:=a5; a5:=a3; a3:=a9; a9:=a4;
   a4:=a7; a7:=a0; a0:=a8; a8:=a7; a7:=a6; a6:=a5; a5:=a4;
   a4:=a2; a2:=a9; a9:=a3; a3:=a1; a1:=a0; a0:=a3; a3:=a1;
   a1:=a8; a8:=a6; a6:=a7; a7:=a4; a4:=a5; a5:=a9; a9:=a2;
   a2:=a0; a0:=a7; a7:=a3; a3:=a4; a4:=a2; a2:=a5; a5:=a1;
   a1:=a8; a8:=a6; a6:=a9; a9:=a0; a0:=a4; a4:=a2; a2:=a5;
   a5:=a8; a8:=a1; a1:=a9; a9:=a6; a6:=a3; a3:=a7; a7:=a0;
   a0:=a6; a6:=a9; a9:=a4; a4:=a3; a3:=a1; a1:=a8; a8:=a5;
   a5:=a2; a2:=a7; a7:=a0; a0:=a7; a7:=a1; a1:=a5; a5:=a3;
   a3:=a9; a9:=a2; a2:=a4; a4:=a6; a6:=a8; a8:=a0
   end;
begin
   a0 :=10; a1 := 1; a2 := 2; a3 := 3; a4 := 4;
   a5 := 5; a6 := 6; a7 := 7; a8 := 8; a9 := 9;
   permute;
   if (a0 <> 1) or (a1 <> 9) or (a2 <> 5) or (a3 <> 2) or (a4 <> 7) or
      (a5 <> 8) or (a6 <> 4) or (a7 <> 3) or (a8 <> 1) or (a9 <> 6)
      then
      writeln(' FAIL...6.8.3.2-2 (IMDEFB33)')
   else
     begin
       writeln(' OUTPUT FROM TEST...6.8.3.2-2');
       writeln(' A procedure may have at least 300 statements');
       writeln(' IMPLEMENTATION DEFINED BEHAVIOUR...6.8.3.2-2',
               ' (IMDEFB33)');
     end
end.
