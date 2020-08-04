{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.6-13, FILE=ERR11T, CLASS=ERRORHANDLING, LEVEL=0,          }
{ NUMBER=08                                                          }
{                                                                    }
{:This test violates the assignment-compatibility rules for sets     }
{:passed as parameters.                                              }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Writing revised. Was previously 6.4.6-8.                   }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR11T(output);
type
   colour   = (red,pink,orange,yellow,green,blue);
   subone   = red..green;
   settwo   = set of yellow..blue;
var
   setone : set of subone;

procedure test(a : settwo);
begin
   writeln(' ERROR NOT DETECTED...6.4.6-13 (D.08)')
end;

begin
   writeln(' ERROR...6.4.6-13 (ERR11T)');
   setone:=[red,pink,orange];
   test(setone)  { error}
end.
