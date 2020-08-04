{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.6-10, FILE=ERR08T, CLASS=ERRORHANDLING, LEVEL=0,          }
{ NUMBER=07                                                          }
{                                                                    }
{:This program violates parameter assignment-compatibility rules.    }
{                                                                    }
{ Similar to 6.4.6-9.                                                }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment and writing revised. Was previously 6.4.6-5.       }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR08T(output);
type
   subrange = 0..5;
var
   i : subrange;

procedure test(a : subrange);
begin
   writeln(' THE VALUE OF A IS ', a);
   a:=5
end;

begin
   writeln(' ERROR...6.4.6-10 (ERR08T)');
   i:=5;
   test(i*2);      { error}
   writeln(' ERROR NOT DETECTED...6.4.6-10 (D.07)')
end.
