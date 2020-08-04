{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.4-4, FILE=CONF114, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This test contains all the four possible combinations of           }
{:procedural and functional parameters whose parameters are          }
{:themselves procedures and functions.                               }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF114(output);

var
   ii : integer;

procedure pglobal;
   begin
   ii := ii + 1;
   end;

procedure p1(procedure p11(procedure p12));
   begin { p1 }
   p11(pglobal)
   end;

procedure p1actual(procedure q1);
   begin
   if ii = 0 then q1
   end;

function fglobal : boolean;
   begin
   fglobal := true;
   ii := ii + 1;
   end;

procedure p2(procedure p21(function f22 : boolean));
   begin { p2 }
   p21(fglobal)
   end;

procedure p2actual(function q2 : boolean);
   begin
   if q2 then
   end;

procedure p3(function f31(function f32 : boolean) : boolean);
   begin { p3 }
   if f31(fglobal) then ii := ii + 1
   end;

function f3actual(function q3 : boolean) : boolean;
   begin
   if q3 then f3actual := true
   end;

procedure p4(function f41(procedure p42) : boolean);
   begin { p4 }
   if f41(pglobal) then ii := ii + 1
   end;

function f4actual(procedure q4) : boolean;
   begin
   if ii = 4 then q4;
   f4actual := true
   end;

begin
ii := 0;
p1(p1actual);
p2(p2actual);
p3(f3actual);
p4(f4actual);
if ii = 6 then
   writeln(' PASS...6.6.3.4-4 (CONF114)')
else
   writeln(' FAIL...6.6.3.4-4 (CONF114)')
end.
