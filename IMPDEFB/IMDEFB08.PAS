{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.2.1-12, FILE=IMDEFB08,                                      }
{ CLASS=IMPLEMENTATIONDEFINEDBEHAVIOUR, LEVEL=0                      }
{                                                                    }
{:This test checks that a large number of types (50) may be declared }
{:in a program.                                                      }
{                                                                    }
{ It is an attempt to discover any small limit imposed on the number }
{ of types by a processor.                                           }
{                                                                    }
{ Modification History :                                             }
{   V3.0: All variables have been assigned values. Writes to         }
{         output modified. Was previously 6.2.1-8.                   }
{   V4.2: Short-form message included in output.                     }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program IMDEFB08(output);
type
   t1 = 0..1;
   t2 = 0..2;
   t3 = 0..3;
   t4 = 0..4;
   t5 = 0..5;
   t6 = 0..6;
   t7 = 0..7;
   t8 = 0..8;
   t9 = 0..9;
   t10 = 0..10;
   t11 = 0..11;
   t12 = 0..12;
   t13 = 0..13;
   t14 = 0..14;
   t15 = 0..15;
   t16 = 0..16;
   t17 = 0..17;
   t18 = 0..18;
   t19 = 0..19;
   t20 = 0..20;
   t21 = 0..21;
   t22 = 0..22;
   t23 = 0..23;
   t24 = 0..24;
   t25 = 0..25;
   t26 = 0..26;
   t27 = 0..27;
   t28 = 0..28;
   t29 = 0..29;
   t30 = 0..30;
   t31 = 0..31;
   t32 = 0..32;
   t33 = 0..33;
   t34 = 0..34;
   t35 = 0..35;
   t36 = 0..36;
   t37 = 0..37;
   t38 = 0..38;
   t39 = 0..39;
   t40 = 0..40;
   t41 = 0..41;
   t42 = 0..42;
   t43 = 0..43;
   t44 = 0..44;
   t45 = 0..45;
   t46 = 0..46;
   t47 = 0..47;
   t48 = 0..48;
   t49 = 0..49;
   t50 = 0..50;
var
   v1 : t1;
   v2 : t2;
   v3 : t3;
   v4 : t4;
   v5 : t5;
   v6 : t6;
   v7 : t7;
   v8 : t8;
   v9 : t9;
   v10 : t10;
   v11 : t11;
   v12 : t12;
   v13 : t13;
   v14 : t14;
   v15 : t15;
   v16 : t16;
   v17 : t17;
   v18 : t18;
   v19 : t19;
   v20 : t20;
   v21 : t21;
   v22 : t22;
   v23 : t23;
   v24 : t24;
   v25 : t25;
   v26 : t26;
   v27 : t27;
   v28 : t28;
   v29 : t29;
   v30 : t30;
   v31 : t31;
   v32 : t32;
   v33 : t33;
   v34 : t34;
   v35 : t35;
   v36 : t36;
   v37 : t37;
   v38 : t38;
   v39 : t39;
   v40 : t40;
   v41 : t41;
   v42 : t42;
   v43 : t43;
   v44 : t44;
   v45 : t45;
   v46 : t46;
   v47 : t47;
   v48 : t48;
   v49 : t49;
   v50 : t50;
begin
   v1 := 1;     v2 := v1 +1; v3 := v2 +1; v4 := v3 +1; v5 := v4 +1;
   v6 := v5 +1; v7 := v6 +1; v8 := v7 +1; v9 := v8 +1; v10:= v9 +1;
   v11:= v10+1; v12:= v11+1; v13:= v12+1; v14:= v13+1; v15:= v14+1;
   v16:= v15+1; v17:= v16+1; v18:= v17+1; v19:= v18+1; v20:= v19+1;
   v21:= v20+1; v22:= v21+1; v23:= v22+1; v24:= v23+1; v25:= v24+1;
   v26:= v25+1; v27:= v26+1; v28:= v27+1; v29:= v28+1; v30:= v29+1;
   v31:= v30+1; v32:= v31+1; v33:= v32+1; v34:= v33+1; v35:= v34+1;
   v36:= v35+1; v37:= v36+1; v38:= v37+1; v39:= v38+1; v40:= v39+1;
   v41:= v40+1; v42:= v41+1; v43:= v42+1; v44:= v43+1; v45:= v44+1;
   v46:= v45+1; v47:= v46+1; v48:= v47+1; v49:= v48+1; v50:= v49+1;

 if (v50 = 50) then
   begin
     writeln(' OUTPUT FROM TEST...6.2.1-12');
     writeln(' At least 50 types may be declared in a program');
     writeln(' IMPLEMENTATION DEFINED BEHAVIOUR...6.2.1-12 (IMDEFB08)');
   end
 else
   writeln(' FAIL...6.2.1-12 (IMDEFB08)')
end.
