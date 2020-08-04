{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.9-5, FILE=IMPDEF02, CLASS=IMPLEMENTATIONDEFINED, LEVEL=0, }
{ NUMBER=02                                                          }
{                                                                    }
{:This program checks whether the required equivalent-symbols can be }
{:used instead of the reference representation.                      }
{                                                                    }
{ The required alternative representations are for curly comment     }
{ brackets and square subscript brackets. These must be provided     }
{ since the necessary characters *, ), and . are available.          }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Changed to test required alternatives, not just comments.  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{   V5.7: NUMBER changed to correspond with Annex E of 7185:1990.    }
{                                                                    }

program IMPDEF02(output);
(* Test of alternate comment delimiters *)
var
   x: array (. 1 .. 10 .) of boolean;
   y: array [ 1 .. 10.) of boolean;
begin
   x(.1] := true;
   y[1.) := x[1];
 (* test of alternate comment delimiters. If these delimiters
   are not implemented a syntax error will result. *)
   writeln(' OUTPUT FROM TEST...6.1.9-5');
   write(' Alternate subscript brackets and');
   writeln(' alternate comment delimiters are implemented.');
   writeln(' IMPLEMENTATION DEFINED...6.1.9-5 (IMPDEF02)')
end.
