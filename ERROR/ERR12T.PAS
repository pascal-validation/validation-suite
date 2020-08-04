{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.5.3.2-2, FILE=ERR12T, CLASS=ERRORHANDLING, LEVEL=0,         }
{ NUMBER=01                                                          }
{                                                                    }
{:This test allows an array index to exceed the array bounds.        }
{                                                                    }
{ This may present some problems to particular implementations.      }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment changed - test not similar to 6.4.5-6. Writes      }
{         revised. Was previously 6.5.3.2-1.                         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR12T(output);
var
   urray : array[1..10,1..10] of integer;
   i     : integer;
begin
   writeln(' ERROR...6.5.3.2-2 (ERR12T)');
   i:=3;
   urray[i*2,i*4]:=0;     {error}
   writeln(' ERROR NOT DETECTED...6.5.3.2-2 (D.01)')
end.
