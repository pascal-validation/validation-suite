{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.2.1-14, FILE=IMDEFB10,                                      }
{ CLASS=IMPLEMENTATIONDEFINEDBEHAVIOUR, LEVEL=0                      }
{                                                                    }
{:This test checks that 128 constant definitions are allowed in one  }
{:constant-definition-part.                                          }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test.                                                  }
{   V4.2: Short-form message included in output.                     }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program IMDEFB10(output);
const
  c1  =   28 ;  c2  = - c1 ;  c3  = - c2 ;  c4  = - c3 ;  c5  = - c4 ;
  c6  = - c5 ;  c7  = - c6 ;  c8  = - c7 ;  c9  = - c8 ;  c10 = - c9 ;
  c11 = - c10;  c12 = - c11;  c13 = - c12;  c14 = - c13;  c15 = - c14;
  c16 = - c15;  c17 = - c16;  c18 = - c17;  c19 = - c18;  c20 = - c19;
  c21 = - c20;  c22 = - c21;  c23 = - c22;  c24 = - c23;  c25 = - c24;
  c26 = - c25;  c27 = - c26;  c28 = - c27;  c29 = - c28;  c30 = - c29;
  c31 = - c30;  c32 = - c31;  c33 = - c32;  c34 = - c33;  c35 = - c34;
  c36 = - c35;  c37 = - c36;  c38 = - c37;  c39 = - c38;  c40 = - c39;
  c41 = - c40;  c42 = - c41;  c43 = - c42;  c44 = - c43;  c45 = - c44;
  c46 = - c45;  c47 = - c46;  c48 = - c47;  c49 = - c48;  c50 = - c49;
  c51 = - c50;  c52 = - c51;  c53 = - c52;  c54 = - c53;  c55 = - c54;
  c56 = - c55;  c57 = - c56;  c58 = - c57;  c59 = - c58;  c60 = - c59;
  c61 = - c60;  c62 = - c61;  c63 = - c62;  c64 = - c63;  c65 = - c64;
  c66 = - c65;  c67 = - c66;  c68 = - c67;  c69 = - c68;  c70 = - c69;
  c71 = - c70;  c72 = - c71;  c73 = - c72;  c74 = - c73;  c75 = - c74;
  c76 = - c75;  c77 = - c76;  c78 = - c77;  c79 = - c78;  c80 = - c79;
  c81 = - c80;  c82 = - c81;  c83 = - c82;  c84 = - c83;  c85 = - c84;
  c86 = - c85;  c87 = - c86;  c88 = - c87;  c89 = - c88;  c90 = - c89;
  c91 = - c90;  c92 = - c91;  c93 = - c92;  c94 = - c93;  c95 = - c94;
  c96 = - c95;  c97 = - c96;  c98 = - c97;  c99 = - c98;  c100= - c99;
  c101= -c100;  c102= -c101;  c103= -c102;  c104= -c103;  c105= -c104;
  c106= -c105;  c107= -c106;  c108= -c107;  c109= -c108;  c110= -c109;
  c111= -c110;  c112= -c111;  c113= -c112;  c114= -c113;  c115= -c114;
  c116= -c115;  c117= -c116;  c118= -c117;  c119= -c118;  c120= -c119;
  c121= -c120;  c122= -c121;  c123= -c122;  c124= -c123;  c125= -c124;
  c126= -c125;  c127= -c126;  c128= -c127;
begin
if c128 = -28 then
  begin
    writeln(' OUTPUT FROM TEST...6.2.1-14');
    writeln(' At least 128 constant definitions are allowed',
            ' in one constant-definition-part');
    writeln(' IMPLEMENTATION DEFINED BEHAVIOUR...6.2.1-14 (IMDEFB10)');
  end
else
   writeln(' FAIL...6.2.1-14 (IMDEFB10)')
end.
