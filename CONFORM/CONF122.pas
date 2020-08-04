{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.3-1, FILE=CONF122, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This program checks that the procedure new has been implemented.   }
{:Both forms of new are tested.                                      }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V4.0: Assignment to tagfeeld corrected.                          }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF122(output);
type
   two      = (a,b);
   recone   = record
               i : integer;
               j : boolean
              end;
   rectwo   = record
               c : integer;
               case tagfield : two of
                  a : (m : integer);
                  b : (n : boolean)
              end;
   recthree = record
               c : integer;
               case tagfield : two of
                  a : (case tagfeeld : two of
                           a : (o : integer);
                           b : (p : char));
                  b : (q : integer)
              end;
var
   ptrone : ^recone;
   ptrtwo : ^rectwo;
   ptrthree : ^recthree;
begin
   new(ptrone);
   new(ptrtwo,a);
   ptrtwo^.tagfield:=a;
   new(ptrthree,a,b);
   ptrthree^.tagfield:=a;
   ptrthree^.tagfeeld:=b;
   writeln(' PASS...6.6.5.3-1 (CONF122)')
end.
