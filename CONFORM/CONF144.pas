{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.1-1, FILE=CONF144, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This program tests the precedence of operators.                    }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test, replacing previous tests 6.7.1-1, 6.7.1-2 and    }
{         6.7.2.1-3.                                                 }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF144(output);
type
   operatorcategory = (boolean,adding,multiplying,relational);
var
   indicator : set of operatorcategory;
   one,two,three,six,seven,twelve,thirteen : integer;
begin
   one:=1;
   two:=2;
   three:=3;
   six:=6;
   seven:=7;
   twelve:=12;
   thirteen:=13;
   indicator:=[];

   if (twelve/six*two < 3.9) or
      (twelve div six*two <> 4) or
      (thirteen mod six*two <> 2) or
      (thirteen*seven mod two <> 1) or
      (twelve/six/two > 1.1) or
      (twelve div six div two <> 1) or
      (twelve div seven mod two <> 1) or
      (twelve mod seven div two <> 2) or
      (twelve mod seven mod two <> 1) then
      indicator:=indicator+[multiplying];

   if (one-two+three <> 2) or
      (three-two-one <> 0) then
      indicator:=indicator+[adding];

   if (twelve*six+two <> 74) or
      (twelve+six*two <> 24) or
      (twelve*six-two <> 70) or
      (twelve-six*two <> 0) or
      (twelve/six+two < 3.9) or
      (twelve+six/two < 14.9) or
      (twelve/six-two > 0.1) or
      (twelve-six/two < 8.9) or
      (twelve div six+two <> 4) or
      (twelve+six div two <> 15) or
      (twelve div six-two <> 0) or
      (twelve-six div two <> 9) or
      (twelve mod seven+two <> 7) or
      (twelve+seven mod two <> 13) or
      (twelve mod seven-two <> 3) or
      (twelve-seven mod two <> 11) then
      indicator:=indicator+[adding,multiplying];

   if (not true and false) or
      not(not false or true) or
      not(true or false and false) then
      indicator:=indicator+[boolean];

   if not(false and true=false) or
      not(false=true and false) or
      not(false and true<>true) or
      not(true<>true and false) or
      not(false and true<true) or
      not(true>true and false) or
      not(false and true<=true) or
      not(true>=true and false) or
      not(false and true in [false]) or
      (true or true=false) or
      (false=true or true) or
      (true or true<>true) or
      (true<>true or true) or
      (true or false<true) or
      (true<false or true) or
      (true or false>true) or
      (true>false or true) or
      (true or true<=false) or
      (false>=true or true) or
      (true or true in [false]) then
      indicator:=indicator+[boolean,relational];

   if indicator=[] then
      writeln(' PASS...6.7.1-1 (CONF144)')
   else
      begin
      if boolean in indicator then
         writeln(' FAIL...6.7.1-1 (CONF144),',
                 ' PRECEDENCE - BOOLEAN OPERATORS');
      if adding in indicator then
         writeln(' FAIL...6.7.1-1 (CONF144),',
                 ' PRECEDENCE - ADDING OPERATORS');
      if multiplying in indicator then
         writeln(' FAIL...6.7.1-1 (CONF144),',
                 ' PRECEDENCE - MULTIPLYING OPERATORS');
      if relational in indicator then
         writeln(' FAIL...6.7.1-1 (CONF144),',
                 ' PRECEDENCE - RELATIONAL OPERATORS')
      end
end.
