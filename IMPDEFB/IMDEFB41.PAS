{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.10-7, FILE=IMDEFB41,                                    }
{ CLASS=IMPLEMENTATIONDEFINEDBEHAVIOUR, LEVEL=0                      }
{                                                                    }
{:This test checks that with-statements may be nested to 15 levels.  }
{                                                                    }
{ The test may break a limit in some processors, particularly if a   }
{ register is allocated for every selected variable.                 }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Value check added. Write standardised.                     }
{   V4.2: Short-form message included in output.                     }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program IMDEFB41(output);
type
   rec1 = record
             i1:integer
           end;
   rec2 = record
             i2:integer
           end;
   rec3 = record
             i3:integer
           end;
   rec4 = record
             i4:integer
           end;
   rec5 = record
             i5:integer
           end;
   rec6 = record
             i6:integer
           end;
   rec7 = record
             i7:integer
           end;
   rec8 = record
             i8:integer
           end;
   rec9 = record
             i9:integer
           end;
   rec10 = record
             i10:integer
           end;
   rec11 = record
             i11:integer
           end;
   rec12 = record
             i12:integer
           end;
   rec13 = record
             i13:integer
           end;
   rec14 = record
             i14:integer
           end;
   rec15 = record
             i15:integer
           end;
   p1 = ^rec1;
   p2 = ^rec2;
   p3 = ^rec3;
   p4 = ^rec4;
   p5 = ^rec5;
   p6 = ^rec6;
   p7 = ^rec7;
   p8 = ^rec8;
   p9 = ^rec9;
   p10 = ^rec10;
   p11 = ^rec11;
   p12 = ^rec12;
   p13 = ^rec13;
   p14 = ^rec14;
   p15 = ^rec15;
var
   ptr1 : p1;
   ptr2 : p2;
   ptr3 : p3;
   ptr4 : p4;
   ptr5 : p5;
   ptr6 : p6;
   ptr7 : p7;
   ptr8 : p8;
   ptr9 : p9;
   ptr10 : p10;
   ptr11 : p11;
   ptr12 : p12;
   ptr13 : p13;
   ptr14 : p14;
   ptr15 : p15;
begin
   new(ptr1);
   new(ptr2);
   new(ptr3);
   new(ptr4);
   new(ptr5);
   new(ptr6);
   new(ptr7);
   new(ptr8);
   new(ptr9);
   new(ptr10);
   new(ptr11);
   new(ptr12);
   new(ptr13);
   new(ptr14);
   new(ptr15);
   with ptr1^ do
      with ptr2^ do
         with ptr3^ do
            with ptr4^ do
               with ptr5^ do
                  with ptr6^ do
                     with ptr7^ do
                        with ptr8^ do
                           with ptr9^ do
                              with ptr10^ do
                                 with ptr11^ do
                                    with ptr12^ do
                                       with ptr13^ do
                                          with ptr14^ do
                                             with ptr15^ do
                                                  begin
                                                  i1:=1;
                                                  i2:=2;
                                                  i3:=3;
                                                  i4:=4;
                                                  i5:=5;
                                                  i6:=6;
                                                  i7:=7;
                                                  i8:=8;
                                                  i9:=9;
                                                  i10:=10;
                                                  i11:=11;
                                                  i12:=12;
                                                  i13:=13;
                                                  i14:=14;
                                                  i15:=15
                                                  end;
   if (ptr1^.i1=1)and(ptr2^.i2=2)and(ptr3^.i3=3)and(ptr4^.i4=4)and
      (ptr5^.i5=5)and(ptr6^.i6=6)and(ptr7^.i7=7)and(ptr8^.i8=8)and
      (ptr9^.i9=9)and(ptr10^.i10=10)and(ptr11^.i11=11)and
      (ptr12^.i12=12)and(ptr13^.i13=13)and(ptr14^.i14=14)and
      (ptr15^.i15=15) then
     begin
       writeln(' OUTPUT FROM TEST...6.8.3.10-7');
       writeln(' With-statements may be nested to at least 15 levels');
       writeln(' IMPLEMENTATION DEFINED BEHAVIOUR...6.8.3.10-7',
               ' (IMDEFB41)');
     end
   else
      writeln(' FAIL...6.8.3.10-7 (IMDEFB41)')
end.
