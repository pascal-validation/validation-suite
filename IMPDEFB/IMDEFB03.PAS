{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.5-10, FILE=IMDEFB03,                                      }
{ CLASS=IMPLEMENTATIONDEFINEDBEHAVIOUR, LEVEL=0                      }
{                                                                    }
{:This test checks that at least 200 real literals are allowed by a  }
{:processor.                                                         }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test derived from Algol 60 test 30.                    }
{   V4.2: Short-form message changed and included in output.         }
{   V5.0: Short-form and output comments changed.                    }
{   V5.1: Short-form message changed to state 200 not 100 reals      }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program IMDEFB03(output);

var
   x : real;

begin
x := 0;
x := (x + 1.1) / 3.3;
x := (x + 2.2) / 6.6;
x := (x + 3.3) / 9.9;
x := (x + 4.4) / 13.2;
x := (x + 5.5) / 16.5;
x := (x + 6.6) / 19.8;
x := (x + 7.7) / 23.1;
x := (x + 8.8) / 26.4;
x := (x + 9.9) / 29.7;
x := (x + 11.0) / 33.0;
x := (x + 12.1) / 36.3;
x := (x + 13.2) / 39.6;
x := (x + 14.3) / 42.9;
x := (x + 15.4) / 46.2;
x := (x + 16.5) / 49.5;
x := (x + 17.6) / 52.8;
x := (x + 18.7) / 56.1;
x := (x + 19.8) / 59.4;
x := (x + 20.9) / 62.7;
x := (x + 22.0) / 66.0;
x := (x + 23.1) / 69.3;
x := (x + 24.2) / 72.6;
x := (x + 25.3) / 75.9;
x := (x + 26.4) / 79.2;
x := (x + 27.5) / 82.5;
x := (x + 28.6) / 85.8;
x := (x + 29.7) / 89.1;
x := (x + 30.8) / 92.4;
x := (x + 31.9) / 95.7;
x := (x + 33.0) / 99.0;
x := (x + 34.1) / 102.3;
x := (x + 35.2) / 105.6;
x := (x + 36.3) / 108.9;
x := (x + 37.4) / 112.2;
x := (x + 38.5) / 115.5;
x := (x + 39.6) / 118.8;
x := (x + 40.7) / 122.1;
x := (x + 41.8) / 125.4;
x := (x + 42.9) / 128.7;
x := (x + 44.0) / 132.0;
x := (x + 45.1) / 135.3;
x := (x + 46.2) / 138.6;
x := (x + 47.3) / 141.9;
x := (x + 48.4) / 145.2;
x := (x + 49.5) / 148.5;
x := (x + 50.6) / 151.8;
x := (x + 51.7) / 155.1;
x := (x + 52.8) / 158.4;
x := (x + 53.9) / 161.7;
x := (x + 55.0) / 165.0;
x := (x + 56.1) / 168.3;
x := (x + 57.2) / 171.6;
x := (x + 58.3) / 174.9;
x := (x + 59.4) / 178.2;
x := (x + 60.5) / 181.5;
x := (x + 61.6) / 184.8;
x := (x + 62.7) / 188.1;
x := (x + 63.8) / 191.4;
x := (x + 64.9) / 194.7;
x := (x + 66.0) / 198.0;
x := (x + 67.1) / 201.3;
x := (x + 68.2) / 204.6;
x := (x + 69.3) / 207.9;
x := (x + 70.4) / 211.2;
x := (x + 71.5) / 214.5;
x := (x + 72.6) / 217.8;
x := (x + 73.7) / 221.1;
x := (x + 74.8) / 224.4;
x := (x + 75.9) / 227.7;
x := (x + 77.0) / 231.0;
x := (x + 78.1) / 234.3;
x := (x + 79.2) / 237.6;
x := (x + 80.3) / 240.9;
x := (x + 81.4) / 244.2;
x := (x + 82.5) / 247.5;
x := (x + 83.6) / 250.8;
x := (x + 84.7) / 254.1;
x := (x + 85.8) / 257.4;
x := (x + 86.9) / 260.7;
x := (x + 88.0) / 264.0;
x := (x + 89.1) / 267.3;
x := (x + 90.2) / 270.6;
x := (x + 91.3) / 273.9;
x := (x + 92.4) / 277.2;
x := (x + 93.5) / 280.5;
x := (x + 94.6) / 283.8;
x := (x + 95.7) / 287.1;
x := (x + 96.8) / 290.4;
x := (x + 97.9) / 293.7;
x := (x + 99.0) / 297.0;
x := (x + 100.1) / 300.3;
x := (x + 101.2) / 303.6;
x := (x + 102.3) / 306.9;
x := (x + 103.4) / 310.2;
x := (x + 104.5) / 313.5;
x := (x + 105.6) / 316.8;
x := (x + 106.7) / 320.1;
x := (x + 107.8) / 323.4;
x := (x + 108.9) / 326.7;
x := (x + 110.0) / 330.0;
if (x >= 0.333) and (x <= 0.335) then
  begin
    writeln(' OUTPUT FROM TEST...6.1.5-10');
    writeln(' At least 200 real literals are allowed by the processor');
    writeln(' IMPLEMENTATION DEFINED BEHAVIOUR...6.1.5-10 (IMDEFB03)');
  end
else
   writeln(' FAIL...6.1.5-10 (IMDEFB03)')
end.
