{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.2.1-1, FILE=CONF167, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This test checks that all the empty clauses are permitted.         }
{                                                                    }
{ Note: Permissibility of an empty clause in the field list of a     }
{ record is actually stated in section 6.4.3.3 of the Standard, and  }
{ in a case statement in section 6.8.3.5.                            }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Reals removed and empty else clause added.                 }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF167(output);
var
   b:boolean;
   r1:record
       x:char;
       a:integer;   {1}
       end;
   r2:record
       case b:boolean of
       true:(
             c:char;
             d:char;   {2}
            );
       false:
             (e:integer);   {3}
       end;
begin
   b:=true;
   if b then;   {4}
   repeat
      b:= not b;   {5}
   until b;
   while b do
   begin
      b:=not b;   {6}
   end;
   with r1 do;   {7}
   if b then b:=true else;  {8}
   r1.a:=1;
   case r1.a of
   0:  b:=false;
   1:  ;   {9}
   2:  b:=true;   {9}
   end;
   writeln(' PASS...6.8.2.1-1 (CONF167)');   {10}
end.
