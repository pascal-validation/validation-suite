{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.2.3.5-1, FILE=ERR01T, CLASS=ERRORHANDLING, LEVEL=0,         }
{ NUMBER=43                                                          }
{                                                                    }
{:This test causes an error by using a totally-undefined variable.   }
{                                                                    }
{ All variables whose identifiers are declared in the variable-      }
{ declaration-part of a block, except for those listed as program    }
{ parameters, shall be TOTALLY-UNDEFINED when execution of the       }
{ statement-part of their block commences.  Since the use of values  }
{ of totally-undefined variables is an error, the program below      }
{ evokes that error.  An ideal processor will find the program       }
{ unacceptable and state why.  If the error is undetected, various   }
{ results may be printed, depending on the implementation.  Possible }
{ results are a system-initialized value, or rubbish left over from  }
{ earlier activations, probably procedure q.                         }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Renumbered from 6.2.1-11.                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR01T(output);

procedure q;
var
   i,j : integer;
begin
   i:=2;
   j:=3
end;

procedure r;
var
   i,j : integer;
begin
   j := i-4;
   writeln(' ERROR NOT DETECTED...6.2.3.5-1 (D.43)');
   writeln(' THE VALUE OF I IS ', i)
end;

{Program body}
begin
   writeln(' ERROR...6.2.3.5-1 (ERR01T)');
   q;
   r
end.
