{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.1-1, FILE=CONF100, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This program tests the syntax for value-parameter sections and     }
{:variable-parameter sections.                                       }
{                                                                    }
{ Includes example of single and multiple identifiers in the         }
{ respective identifier-lists and a check that the correspondence of }
{ actual and formal parameters is correctly handled with             }
{ identifier-lists.                                                  }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Comment changed to accurately describe test.               }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF100(output);
type
   colour   = (red,orange,yellow,green,blue,brown);
   subrange = red..blue;
   rekord   = record
               a : integer
              end;
   ptrtype  = ^rekord;
var
   a,b,c,d,e,f,g,h,i,j,
   k,l,m,n,o,p,q,r,s,t : integer;
   counter: integer;
   colone : subrange;
   coltwo : colour;
   colthree : colour;
   u,v,w,x : real;
   y,z : boolean;
   ptr : ptrtype;

procedure testone(a1,b1,c1,d1,e1,f1,g1,h1,i1,j1,k1,
                  l1,m1,n1,o1,p1,q1,r1,s1,t1 : integer;
                  colourone : subrange;
                  colourtwo,colourthree : colour;
                  u1,v1,w1,x1 : real;
                  y1,z1 : boolean;
                  ptr : ptrtype);
begin
   if (a1 + b1 + c1 + d1 + e1 + f1 + g1 + h1 + i1 + j1 + k1 + l1 + m1 +
       n1 + o1 + p1 + q1 + r1 + s1 + t1 = 0)
   and (colourone = orange) and (colourtwo = brown)
   and (colourthree = red) and (abs(u1 + v1 + w1 + x1) < 0.001)
   and (y1 = true) and (z1 = false)
   then
      counter:=1
end;
procedure testtwo(var a1,b1,c1,d1,e1,f1,g1,h1,i1,j1,k1,
                  l1,m1,n1,o1,p1,q1,r1,s1,t1 : integer;
                  var colourone : subrange;
                  var colourtwo,colourthree : colour;
                  var u1,v1,w1,x1 : real;
                  var y1,z1 : boolean;
                  var ptr : ptrtype);
begin
   if (a1 + b1 + c1 + d1 + e1 + f1 + g1 + h1 + i1 + j1 + k1 + l1 + m1 +
       n1 + o1 + p1 + q1 + r1 + s1 + t1 = 0)
   and (colourone = orange) and (colourtwo = brown)
   and (colourthree = red) and (abs(u1 + v1 + w1 + x1) < 0.001)
   and (y1 = true) and (z1 = false)
   then
      counter:=counter + 2
end;

begin
   a:=0; b:=0; c:=0; d:=0; e:=0; f:=0; g:=0;
   h:=0; i:=0; j:=0; k:=0; l:=0; m:=0; n:=0;
   o:=0; p:=0; q:=0; r:=0; s:=0; t:=0;
   colone:=orange;
   coltwo:=brown;
   colthree:=red;
   u:=0; v:=0; w:=0; x:=0;
   y:=true;
   z:=false;
   new(ptr);
   counter:=0;
   testone(a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,
           colone,coltwo,colthree,u,v,w,x,y,z,ptr);
   testtwo(a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,
           colone,coltwo,colthree,u,v,w,x,y,z,ptr);
   if counter=3 then
      writeln(' PASS...6.6.3.1-1 (CONF100)')
   else
      if counter=2 then
         writeln(' FAIL...6.6.3.1-1, VALUE PARAMETERS (CONF100)')
      else
         if counter=1 then
            writeln(' FAIL...6.6.3.1-1, VAR PARAMETERS (CONF100)')
         else
            writeln(' FAIL...6.6.3.1-1, PARAMETERS (CONF100)')
end.
