{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.5-15, FILE=IMDEFB17,                                    }
{ CLASS=IMPLEMENTATIONDEFINEDBEHAVIOUR, LEVEL=0                      }
{                                                                    }
{:This test checks that at least fifteen files can be opened and     }
{:used simultaneously.                                               }
{                                                                    }
{ The Standard permits any number of file variables; this test       }
{ writes to fifteen files simultaneously to check that any limit     }
{ imposed by an implementation is reasonable. Fifteen was chosen     }
{ because the BSI PVS Automatic Analysis programs require this       }
{ number. There is a conformance test (6.4.3.5-12) which tests for   }
{ six simultaneously open files.                                     }
{                                                                    }
{ Modification History :                                             }
{   V4.3: New test.                                                  }
{   V5.0: Short form message reworded.                               }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{   V5.4: Truncated line 79 of v5.4 to 72 characters which is        }
{         max line length that can be assumed.                       }
{                                                                    }

program IMDEFB17(output);

var
   file01, file02, file03, file04, file05,
   file06, file07, file08, file09, file10,
   file11, file12, file13, file14, file15 : text;
   buffer : char;
   result : (pass, fail);

begin
   result:=pass;  { anticipatory}

   rewrite( file01 ); rewrite( file02 ); rewrite( file03 );
   rewrite( file04 ); rewrite( file05 ); rewrite( file06 );
   rewrite( file07 ); rewrite( file08 ); rewrite( file09 );
   rewrite( file10 ); rewrite( file11 ); rewrite( file12 );
   rewrite( file13 ); rewrite( file14 ); rewrite( file15 );

   writeln( file01, 'A' ); writeln( file02, 'B' );
   writeln( file03, 'C' ); writeln( file04, 'D' );
   writeln( file05, 'E' ); writeln( file06, 'F' );
   writeln( file07, 'G' ); writeln( file08, 'H' );
   writeln( file09, 'I' ); writeln( file10, 'J' );
   writeln( file11, 'K' ); writeln( file12, 'L' );
   writeln( file13, 'M' ); writeln( file14, 'N' );
   writeln( file15, 'O' );

   reset( file01 ); reset( file02 ); reset( file03 );
   reset( file04 ); reset( file05 ); reset( file06 );
   reset( file07 ); reset( file08 ); reset( file09 );
   reset( file10 ); reset( file11 ); reset( file12 );
   reset( file13 ); reset( file14 ); reset( file15 );

   readln( file01, buffer ); if buffer<>'A' then result:=fail;
   readln( file02, buffer ); if buffer<>'B' then result:=fail;
   readln( file03, buffer ); if buffer<>'C' then result:=fail;
   readln( file04, buffer ); if buffer<>'D' then result:=fail;
   readln( file05, buffer ); if buffer<>'E' then result:=fail;
   readln( file06, buffer ); if buffer<>'F' then result:=fail;
   readln( file07, buffer ); if buffer<>'G' then result:=fail;
   readln( file08, buffer ); if buffer<>'H' then result:=fail;
   readln( file09, buffer ); if buffer<>'I' then result:=fail;
   readln( file10, buffer ); if buffer<>'J' then result:=fail;
   readln( file11, buffer ); if buffer<>'K' then result:=fail;
   readln( file12, buffer ); if buffer<>'L' then result:=fail;
   readln( file13, buffer ); if buffer<>'M' then result:=fail;
   readln( file14, buffer ); if buffer<>'N' then result:=fail;
   readln( file15, buffer ); if buffer<>'O' then result:=fail;

if result=pass then
  begin
    writeln(' OUTPUT FROM TEST...6.4.3.5-15');
    writeln(' At least 15 files can be opened simultaneously');
   writeln(' IMPLEMENTATION DEFINED BEHAVIOUR...6.4.3.5-15 (IMDEFB17)');
  end
 else writeln(' FAIL...6.4.3.5-15 (IMDEFB17)');
end.
