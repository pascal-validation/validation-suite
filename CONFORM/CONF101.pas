{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.1-2, FILE=CONF101, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This program checks that set, record and array parameters are      }
{:permitted.                                                         }
{                                                                    }
{ Similar to 6.6.3.1-1.                                              }
{                                                                    }
{ Modification History :                                             }
{   V4.0: All elements of the arrays are now assigned values.        }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF101(output);
type
   sett     = set of 0..20;
   rekord   = record
               a : integer
              end;
   urray    = array[boolean] of boolean;
var
   counter : integer;
   setone, settwo,setthree,setfour,setfive,setsix : sett;
   recone,rectwo,recthree,recfour,recfive : rekord;
   urrayone,urraytwo,urraythree,urrayfour : urray;

procedure testone(set1,set2,set3,set4,set5,set6 : sett;
                  rec1,rec2,rec3,rec4,rec5 : rekord;
                  urray1,urray2,urray3,urray4 : urray);
begin
   if (set1 + set2 + set3 + set4 + set5 + set6 = [1])
   and (rec1.a + rec2.a + rec3.a + rec4.a + rec5.a = 5)
   and ((not urray1[true]) and (not urray2[true])
   and (not urray3[true]) and (not urray4[true]))
   then
      counter:=1
end;

procedure testtwo(var set1,set2,set3,set4,set5,set6 : sett;
                  var rec1,rec2,rec3,rec4,rec5 : rekord;
                  var urray1,urray2,urray3,urray4 : urray);
begin
   if (set1 + set2 + set3 + set4 + set5 + set6 = [1])
   and (rec1.a + rec2.a + rec3.a + rec4.a + rec5.a = 5)
   and ((not urray1[true]) and (not urray2[true])
   and (not urray3[true]) and (not urray4[true]))
   then
      counter:=counter + 2
end;

begin
   setone:=[1];   settwo:=[1];   setthree:=[1];
   setfour:=[1];  setfive:=[1];  setsix:=[1];
   recone.a:=1;   rectwo.a:=1;   recthree.a:=1;
   recfour.a:=1;  recfive.a:=1;
   urrayone[true]:=false;  urraytwo[true]:=false;
   urraythree[true]:=false;   urrayfour[true]:=false;
   urrayone[false] := false;  urraytwo[false] := false;
   urraythree[false] := false;  urrayfour[false] := false;
   counter:=0;
   testone(setone,settwo,setthree,setfour,setfive,setsix,
            recone,rectwo,recthree,recfour,recfive,
            urrayone,urraytwo,urraythree,urrayfour);
   testtwo(setone,settwo,setthree,setfour,setfive,setsix,
            recone,rectwo,recthree,recfour,recfive,
            urrayone,urraytwo,urraythree,urrayfour);
   if counter=3 then
      writeln(' PASS...6.6.3.1-2 (CONF101)')
   else
      if counter=2 then
         writeln(' FAIL...6.6.3.1-2, VALUE PARAMETERS (CONF101)')
      else
         if counter=1 then
            writeln(' FAIL...6.6.3.1-2, VAR PARAMETERS (CONF101)')
         else
            writeln(' FAIL...6.6.3.1-2, PARAMETERS (CONF101)')
end.
