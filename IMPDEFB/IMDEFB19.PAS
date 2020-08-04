{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.5.1-2, FILE=IMDEFB19, CLASS=IMPLEMENTATIONDEFINEDBEHAVIOUR, }
{ LEVEL=0                                                            }
{                                                                    }
{:This test checks that 300 identifiers are allowed in a             }
{:variable-declaration-part.                                         }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Upgrade of existing test.                                  }
{   V4.2: Short-form message included in output.                     }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program IMDEFB19(output);
var
   i000,i001,i002,i003,i004,i005,i006,i007,i008,i009,
   i010,i011,i012,i013,i014,i015,i016,i017,i018,i019,
   i020,i021,i022,i023,i024,i025,i026,i027,i028,i029,
   i030,i031,i032,i033,i034,i035,i036,i037,i038,i039,
   i040,i041,i042,i043,i044,i045,i046,i047,i048,i049,
   i050,i051,i052,i053,i054,i055,i056,i057,i058,i059,
   i060,i061,i062,i063,i064,i065,i066,i067,i068,i069,
   i070,i071,i072,i073,i074,i075,i076,i077,i078,i079,
   i080,i081,i082,i083,i084,i085,i086,i087,i088,i089,
   i090,i091,i092,i093,i094,i095,i096,i097,i098,i099,
   i100,i101,i102,i103,i104,i105,i106,i107,i108,i109,
   i110,i111,i112,i113,i114,i115,i116,i117,i118,i119,
   i120,i121,i122,i123,i124,i125,i126,i127,i128,i129,
   i130,i131,i132,i133,i134,i135,i136,i137,i138,i139,
   i140,i141,i142,i143,i144,i145,i146,i147,i148,i149,
   i150,i151,i152,i153,i154,i155,i156,i157,i158,i159,
   i160,i161,i162,i163,i164,i165,i166,i167,i168,i169,
   i170,i171,i172,i173,i174,i175,i176,i177,i178,i179,
   i180,i181,i182,i183,i184,i185,i186,i187,i188,i189,
   i190,i191,i192,i193,i194,i195,i196,i197,i198,i199,
   i200,i201,i202,i203,i204,i205,i206,i207,i208,i209,
   i210,i211,i212,i213,i214,i215,i216,i217,i218,i219,
   i220,i221,i222,i223,i224,i225,i226,i227,i228,i229,
   i230,i231,i232,i233,i234,i235,i236,i237,i238,i239,
   i240,i241,i242,i243,i244,i245,i246,i247,i248,i249,
   i250,i251,i252,i253,i254,i255,i256,i257,i258,i259,
   i260,i261,i262,i263,i264,i265,i266,i267,i268,i269,
   i270,i271,i272,i273,i274,i275,i276,i277,i278,i279,
   i280,i281,i282,i283,i284,i285,i286,i287,i288,i289,
   i290,i291,i292,i293,i294,i295,i296,i297,i298,i299
   : integer;
procedure setvalues( i: integer;
                 var i1, i2, i3, i4, i5, i6, i7, i8, i9, i10:integer);
   begin
   i1 := i;
   i2 := i1 + 1;
   i3 := i2 + 2;
   i4 := i3 + 3;
   i5 := i4 + 4;
   i6 := i5 + 5;
   i7 := i6 + 6;
   i8 := i7 + 7;
   i9 := i8 + 8;
   i10 := i9 + 9
   end;
begin
   setvalues(0,i000,i001,i002,i003,i004,i005,i006,i007,i008,i009);
   setvalues(i009,i010,i011,i012,i013,i014,i015,i016,i017,i018,i019);
   setvalues(i019,i020,i021,i022,i023,i024,i025,i026,i027,i028,i029);
   setvalues(i029,i030,i031,i032,i033,i034,i035,i036,i037,i038,i039);
   setvalues(i039,i040,i041,i042,i043,i044,i045,i046,i047,i048,i049);
   setvalues(i049,i050,i051,i052,i053,i054,i055,i056,i057,i058,i059);
   setvalues(i059,i060,i061,i062,i063,i064,i065,i066,i067,i068,i069);
   setvalues(i069,i070,i071,i072,i073,i074,i075,i076,i077,i078,i079);
   setvalues(i079,i080,i081,i082,i083,i084,i085,i086,i087,i088,i089);
   setvalues(i089,i090,i091,i092,i093,i094,i095,i096,i097,i098,i099);
   setvalues(i099,i100,i101,i102,i103,i104,i105,i106,i107,i108,i109);
   setvalues(i109,i110,i111,i112,i113,i114,i115,i116,i117,i118,i119);
   setvalues(i119,i120,i121,i122,i123,i124,i125,i126,i127,i128,i129);
   setvalues(i129,i130,i131,i132,i133,i134,i135,i136,i137,i138,i139);
   setvalues(i139,i140,i141,i142,i143,i144,i145,i146,i147,i148,i149);
   setvalues(i149,i150,i151,i152,i153,i154,i155,i156,i157,i158,i159);
   setvalues(i159,i160,i161,i162,i163,i164,i165,i166,i167,i168,i169);
   setvalues(i169,i170,i171,i172,i173,i174,i175,i176,i177,i178,i179);
   setvalues(i179,i180,i181,i182,i183,i184,i185,i186,i187,i188,i189);
   setvalues(i189,i190,i191,i192,i193,i194,i195,i196,i197,i198,i199);
   setvalues(i199,i200,i201,i202,i203,i204,i205,i206,i207,i208,i209);
   setvalues(i209,i210,i211,i212,i213,i214,i215,i216,i217,i218,i219);
   setvalues(i219,i220,i221,i222,i223,i224,i225,i226,i227,i228,i229);
   setvalues(i229,i230,i231,i232,i233,i234,i235,i236,i237,i238,i239);
   setvalues(i239,i240,i241,i242,i243,i244,i245,i246,i247,i248,i249);
   setvalues(i249,i250,i251,i252,i253,i254,i255,i256,i257,i258,i259);
   setvalues(i259,i260,i261,i262,i263,i264,i265,i266,i267,i268,i269);
   setvalues(i269,i270,i271,i272,i273,i274,i275,i276,i277,i278,i279);
   setvalues(i279,i280,i281,i282,i283,i284,i285,i286,i287,i288,i289);
   setvalues(i289,i290,i291,i292,i293,i294,i295,i296,i297,i298,i299);
   if i299 = 1350 then
    begin
      writeln(' OUTPUT FROM TEST...6.5.1-2');
      write(' At least 300 identifiers are allowed in a');
      writeln(' variable-declaration-part');
      writeln(' IMPLEMENTATION DEFINED BEHAVIOUR...6.5.1-2 (IMDEFB19)');
    end
   else
    writeln(' FAIL...6.5.1-2 (IMDEFB19)')
end.
