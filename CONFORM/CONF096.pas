{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.2-3, FILE=CONF096, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This program checks that the simple types and pointer-types are    }
{:permitted as the result type of a function.                        }
{                                                                    }
{ The Pascal Standard specifies that the result type of a function   }
{ can only be a simple type or a pointer type.                       }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF096(output);
type
   subrange = 0..3;
   enumerated = (red,yellow,green);
   rectype = record
               a : integer
             end;
   ptrtype = ^rectype;
var
   a : real;
   b : integer;
   c : boolean;
   d : subrange;
   e : enumerated;
   f : char;
   g : ptrtype;

function one : real;
begin
   one:=2.63
end;
function two : integer;
begin
   two:=2
end;
function three : boolean;
begin
   three:=false
end;
function four : subrange;
begin
   four:=2
end;
function five : enumerated;
begin
   five:=yellow
end;
function six : char;
begin
   six:='6'
end;
function seven : ptrtype;
begin
   seven:=nil
end;

begin
   a:=one;
   b:=two;
   c:=three;
   d:=four;
   e:=five;
   f:=six;
   g:=seven;
   writeln(' PASS...6.6.2-3 (CONF096)')
end.
