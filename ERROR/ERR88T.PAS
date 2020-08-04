{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9.3.6-4, FILE=ERR88T, CLASS=ERRORHANDLING, LEVEL=0,         }
{ NUMBER=43                                                          }
{                                                                    }
{:The following program is in error since it accesses (but does not  }
{:use) an undefined value.                                           }
{                                                                    }
{ Modification History :                                             }
{   V5.2: New test suggested by Willett Kemption/Brian Whichmann.    }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{   V5.4: Changed line 30 from                                       }
{          rewrit...6.9.3.6-4e(data);                                }
{       to:rewrite(data);                                            }
{                                                                    }

program ERR88T(output);

var
  message: packed array[1..5] of char;
  data: text;

begin
  writeln(' ERROR...6.9.3.6-4 (ERR88T)');
  message[1] := 'F';
  message[2] := 'A';
  message[3] := 'I';
  message[4] := 'L';
  rewrite(data);
  writeln(data,message:4);
  writeln(' ERROR NOT DETECTED (D.43)')
end.

