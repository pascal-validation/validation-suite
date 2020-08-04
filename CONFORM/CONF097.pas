{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.2-4, FILE=CONF097, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This test checks that functions are permitted from altering their  }
{:environment (ie. side effects).                                    }
{                                                                    }
{ Though side effects are generally not to be encouraged, they are   }
{ part of Standard Pascal and do have genuine uses. Functions with   }
{ side effects occur elsewhere in the validation suite.              }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Write statements regularized.                              }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF097(output);
type
   ptrtochar = ^char;
var
   c1,c2,c3,dummy:char;
   p1,p2:ptrtochar;

function testa(ptr:ptrtochar):char;
   {sneakiest, uses pointers}
var
   pp:ptrtochar;
begin
   pp:=ptr;
   pp^ := 'P';
   testa:='1'
end;

procedure assign;
   {used by testb}
begin
   c1:='A'
end;

function testb:char;
   {sneaky, calls a procedure}
begin
   assign;
   testb:='2'
end;

function testc:char;
   {blatantly changes the environment via write}
begin
  writeln( ' MESSAGE' );
   testc:='6'
end;

function testd:ptrtochar;
   {blatantly sneaky: modifying the environment via new
      and then passing it out}
var
   pp:ptrtochar;
begin
   new(pp);
   pp^:='.';
   testd:=pp
end;

function teste:char;
   {the most used side effect:global access}
begin
   c2:='S';
   teste:='3'
end;

function testf(var c:char):char;
   {straightforward}
begin
   c:='S';
   testf:='4'
end;

begin {of main program}
   new(p1);
   p1^:='F'; c1:='A'; c2:='I'; c3:='L';
   p2:=nil;
      {all variables excluding dummy have been assigned values}
   dummy:=testa(p1);
   dummy:=testb;
   dummy:=teste;
   dummy:=testf(c3);
   p2:=testd;
   dummy:=testc;
   if (p1^='P') and (c2='S') and (c3='S') then
      writeln(' PASS...6.6.2-4 (CONF097)')
   else
      writeln(' FAIL...6.6.2-4 (CONF097)')
end.
