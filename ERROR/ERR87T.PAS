{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9.5-4, FILE=ERR87T, CLASS=ERRORHANDLING, LEVEL=0, NUMBER=09 }
{                                                                    }
{:This test causes an error by applying 'page' to a text file which  }
{:is not in generation mode.                                         }
{                                                                    }
{ Modification History :                                             }
{   V5.1: New test by A. W. Idema (NPL Nov 1987).                    }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }


program ERR87T(output);

var
   f : text;
   c : char;

begin
     writeln(' ERROR...6.9.5-4 (ERR87T)');
     rewrite(f);
     write(f,'.');
     page(f);
     write(f,'.');
     reset(f);
     read(f,c);
     page(f);
     writeln(' ERROR NOT DETECTED...6.9.5-4 (D.09)')
end.
