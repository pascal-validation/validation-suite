{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.6-12, FILE=ERR10T, CLASS=ERRORHANDLING, LEVEL=0,          }
{ NUMBER=50                                                          }
{                                                                    }
{:This test violates the assignment-compatibility rules for          }
{:set-types.                                                         }
{                                                                    }
{ Similarly for 6.4.6-9, if two types are compatible set types, and  }
{ any of the members of the set expression E (of type T2) is not in  }
{ the closed interval specified by the base-type of the type T1, an  }
{ error occurs.                                                      }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment and writing revised. Was previously 6.4.6-7.       }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR10T(output);
type
   colour = (red,pink,orange,yellow,green,blue);
   subone = red..orange;
   subtwo = pink..yellow;
var
   setone : set of subone;
   settwo : set of subtwo;
begin
   writeln(' ERROR...6.4.6-12 (ERR10T)');
   settwo:=[pink,yellow];
   setone:=settwo;                     { should be an error}
   writeln(' ERROR NOT DETECTED...6.4.6-12 (D.50)')
end.
