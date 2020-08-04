{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.3-4, FILE=DEV129, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test deviates since an actual variable parameter shall not    }
{:denote a field which is the selector of a variant-part.            }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Assignment to tag-field S of figure added.                 }
{   V4.3: All real's replaced by integer's. / operator replaced by   }
{         div.                                                       }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV129(output);
type
   shape  = (triangle,rectangle);
   figure = record
               area   :integer;
               case s :shape of
                  triangle  : (base,height :integer);
                  rectangle : (side1,side2 :integer)
               end;
var
   ptr    : ^figure;
procedure findarea(var s : shape);
   begin
      case s of
         triangle : ptr^.area := (ptr^.base*ptr^.height) div 2;
         rectangle: ptr^.area := ptr^.side1*ptr^.side2
      end
   end;
begin
   new(ptr);
   ptr^.s := rectangle;
   ptr^.side1 := 3;
   ptr^.side2 := 4;
   findarea(ptr^.s);     {illegal}
   if ptr^.area = 12 then
      writeln(' DEVIATES...6.6.3.3-4 (DEV129), VAR PARAMETER PASSING')
   else
      writeln(' DEVIATES...6.6.3.3-4 (DEV129), VAR PARAMETER DEVIANCE')
end.
