{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.2.1-5, FILE=IMPDEP19, CLASS=IMPLEMENTATIONDEPENDENT,      }
{ LEVEL=0, NUMBER=05                                                 }
{                                                                    }
{:This program determines if a boolean-expression is partially or    }
{:completely evaluated when the value of the expression is           }
{:determined before the expression is fully evaluated.               }
{                                                                    }
{ Modification History :                                             }
{   V5.2: New test suggested by Denis Valois (College militaire de   }
{         Saint-Jean (Quebec).                                       }
{   V5.7: NUMBER changed to correspond with Annex F of 7185:1990.    }
{                                                                    }

program IMPDEP19(output);

type scal = (inf,med,sup);
     zet = set of scal;

var  LeftOpEvaluated, RightOpEvaluated: boolean;
     SetVar:zet;

function SetOperand(var evaluated: boolean; val: scal): scal;

begin
  evaluated := true;
  SetOperand := val
end;

begin
  writeln(' OUTPUT FROM TEST...6.7.2.1-5');
  LeftOpEvaluated := false;
  RightOpEvaluated := false;
  write(' Short circuit evaluation of set expression (A+B)');
  write(', A and B complete,');
  SetVar:=([SetOperand(LeftOpEvaluated,inf)..sup]) +
          ([SetOperand(RightOpEvaluated,inf)..sup]);
  if LeftOpEvaluated then
    if RightOpEvaluated then
      writeln(' not performed')
    else
      writeln(' performed, left operand evaluated')
  else
    if RightOpEvaluated then
      writeln(' performed, right operand evaluated')
    else
      writeln(', unexpected results');
  writeln(' IMPLEMENTATION DEPENDENT...6.7.2.1-5 (IMPDEP19)');
end.
