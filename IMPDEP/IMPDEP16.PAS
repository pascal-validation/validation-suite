{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.2.1-2, FILE=IMPDEP16, CLASS=IMPLEMENTATIONDEPENDENT,      }
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

program IMPDEP16(output);

var  LeftOpEvaluated, RightOpEvaluated: boolean;
     RealVar:real;

function RealOperand(var evaluated: boolean; val: real): real;

begin
  evaluated := true;
  RealOperand := val
end;

begin
  writeln(' OUTPUT FROM TEST...6.7.2.1-2');
  LeftOpEvaluated := false;
  RightOpEvaluated := false;
  write(' Short circuit evaluation of real expression (A*B)');
  write(', A and B zero,');
  RealVar:=RealOperand(LeftOpEvaluated,0.0)*
                       RealOperand(RightOpEvaluated,0.0);
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
  writeln(' IMPLEMENTATION DEPENDENT...6.7.2.1-2 (IMPDEP16)');
end.
