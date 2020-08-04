{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9.1-5, FILE=ERR80T, CLASS=ERRORHANDLING, LEVEL=0, NUMBER=56 }
{                                                                    }
{:This test checks that an error is produced when an attempt is made }
{:to read a real but the sequence of characters on the input file    }
{:does not form a valid real.                                        }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Program parameter removed.                                 }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR80T(output);
var
   f:text;
   r:real;
begin
   writeln(' ERROR...6.9.1-5 (ERR80T)');
   rewrite(f);
   writeln(f,'ABC123.456');
   reset(f);
   read(f,r);      {should cause an error}
   writeln(' ERROR NOT DETECTED...6.9.1-5 (D.56)')
end.
