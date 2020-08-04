{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9.3.1-12, FILE=ERR86T, CLASS=ERRORHANDLING, LEVEL=0,        }
{ NUMBER=58                                                          }
{                                                                    }
{:This test attempts to output strings whose field width parameters  }
{:are non-positive.                                                  }
{                                                                    }
{ Modification History :                                             }
{   V5.1: New test by A. W. Idema ( NPL Nov 1987 ).                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR86T(output);

var
   f : text;
   i : integer;

begin
     writeln(' ERROR...6.9.3.1-12 (ERR86T)');
     rewrite(f);
     for i := 10 downto -1 do
         write(f,' ','string':i,'REP=',i);
     writeln(' ERROR NOT DETECTED...6.9.3.1-12 (D.58)')
end.
