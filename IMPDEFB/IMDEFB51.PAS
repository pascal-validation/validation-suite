{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.10-10, FILE=IMDEFB51, CLASS=IMPLEMENTATIONDEFINEDBEHAVIOUR, }
{ LEVEL=0                                                            }
{                                                                    }
{:This test determines how the procedure reset deals with the        }
{:standard file output.                                              }
{                                                                    }
{ This behaviour of this test is altered by any binding of output to }
{ devices and files that have been established prior to running the  }
{ PVS. In validation, it is normal practice for output to be         }
{ redirected to a file as well as to a terminal, individual          }
{ operating systems differ in how they deal with such redirection -  }
{ so care is needed with this test. The program should be run with   }
{ no redirection to obtain the definitive result for formal          }
{ validation, behaviour in other circumstances should simply be      }
{ reported. The effect of a reset on output is implementation        }
{ defined. However that defined value may be that it causes an       }
{ error. Hence during a validation this test need not generate       }
{ implementation defined.                                            }
{                                                                    }
{ Modification History :                                             }
{   V4.1: New test.                                                  }
{   V4.2: Comment and writes revised.                                }
{   V4.3: Revised to be more tolerant. Comment revised so may fail.  }
{   V5.0: Test reclassified from IMPLEMENTATION DEFINED to           }
{         IMPLEMENTATION DEFINED BEHAVIOUR.                          }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{   V5.8: rewrite(output) inserted in else path prior to write       }
{         operations, and test string corrected to ' OUTPU'.         }
{                                                                    }



program IMDEFB51(output);
var
   i : integer;
   c : char;
   str : packed array[1..6] of char;

begin
   writeln(' OUTPUT FROM TEST...6.10-10');
   reset(output);
   if eof(output) then begin
      rewrite(output);
      writeln(' Reset on standard file output sets EOF')
      end
   else begin
      str := '++++++';
      for i := 1 to 6 do
         if not eof(output) then
         begin
            read(output,c);
            str[i] := c
         end;
      rewrite(output);
      write(' Reset ');
      if str = ' OUTPU' then
         write('sets ')
      else
         write('does not set ');
      write('the file variable to the');
      writeln(' first component of the file output; READ: ', str);
      end;
   writeln(' IMPLEMENTATION DEFINED BEHAVIOUR...6.10-10 (IMDEFB51)')
end.
