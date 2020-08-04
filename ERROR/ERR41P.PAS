{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.6.5.3-17, FILE=ERR41P, CLASS=ERRORHANDLING, LEVEL=0,     }
{ NUMBER=22                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Test modified to use extended form of new.                 }
{                                                                    }

program ERR41P(output);
type
   tagtype1 = boolean;
   tagtype2 = 1..2;
   tagtype3 = 3..4;
   rec = record
            case tag1 : tagtype1 of
            false : (q : integer);
            true  : (case tag2 : tagtype2 of
                     1 : (b1,b2 : boolean);
                     2 : (case tag3 : tagtype3 of
                          3 : (r : boolean);
                          4 : (s,t : integer)))
         end;
var
   ptr : ^ rec;
begin
   new(ptr,true,2,3);
   with ptr^ do
      begin
      tag1 := true;
      tag2 := 2;
      tag3 := 3;
      end;
   dispose(ptr,true,2,3);
   writeln(' PRETEST...6.6.5.3-17 (ERR41P)')
end.
