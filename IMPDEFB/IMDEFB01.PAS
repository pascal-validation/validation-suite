{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.3-3, FILE=IMDEFB01, CLASS=IMPLEMENTATIONDEFINEDBEHAVIOUR, }
{ LEVEL=0                                                            }
{                                                                    }
{:This test checks the significance limit of identifiers.            }
{                                                                    }
{ Although the Standard places no limit on the length of             }
{ identifiers, nor does it specify any equivalences between          }
{ identifiers except in the case of letters, it is not uncommon for  }
{ processors to deviate from the Standard by mapping some            }
{ identifiers into others.  The most common practice is simply to    }
{ truncate the tail of long identifiers after some limit chosen for  }
{ convenience (8,10,12,16).  This test is relevant to processors     }
{ that so deviate, and attempts to deduce what significance limit is }
{ used. Processors which accept all characters of identifiers as     }
{ significant will simply report a limit greater than 20.            }
{ Processors which use some more sophisticated method of deviating,  }
{ such as hashing a tail or preserving the true length, will not be  }
{ detected and will probably evoke the same message.                 }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment revised to be more understandable, and in light    }
{         of changes introduced by DP7185.  Output modified.         }
{   V4.2: Short-form message changed and included in output.         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program IMDEFB01(output);
const
   i3i = 3;
   i4ii = 1;
   i5iii = 1;
   i6iiii = 1;
   i7iiiii = 1;
   i8iiiiii = 1;
   i9iiiiiii = 1;
   i10iiiiiii = 1;
   i11iiiiiiii = 1;
   i12iiiiiiiii = 1;
   i13iiiiiiiiii = 1;
   i14iiiiiiiiiii = 1;
   i15iiiiiiiiiiii = 1;
   i16iiiiiiiiiiiii = 1;
   i17iiiiiiiiiiiiii = 1;
   i18iiiiiiiiiiiiiii = 1;
   i19iiiiiiiiiiiiiiii = 1;
   i20iiiiiiiiiiiiiiiii = 1;

procedure signif;
const
   i3j = 0;
   i4ij = 0;
   i5iij = 0;
   i6iiij = 0;
   i7iiiij = 0;
   i8iiiiij = 0;
   i9iiiiiij = 0;
   i10iiiiiij = 0;
   i11iiiiiiij = 0;
   i12iiiiiiiij = 0;
   i13iiiiiiiiij = 0;
   i14iiiiiiiiiij = 0;
   i15iiiiiiiiiiij = 0;
   i16iiiiiiiiiiiij = 0;
   i17iiiiiiiiiiiiij = 0;
   i18iiiiiiiiiiiiiij = 0;
   i19iiiiiiiiiiiiiiij = 0;
   i20iiiiiiiiiiiiiiiij = 0;

var
   x : integer;
begin
   x:=i3i + i4ii + i5iii + i6iiii + i7iiiii + i8iiiiii +
      i9iiiiiii + i10iiiiiii + i11iiiiiiii + i12iiiiiiiii +
      i13iiiiiiiiii + i14iiiiiiiiiii + i15iiiiiiiiiiii +
      i16iiiiiiiiiiiii + i17iiiiiiiiiiiiii + i18iiiiiiiiiiiiiii +
      i19iiiiiiiiiiiiiiii + i20iiiiiiiiiiiiiiiii;

   if x = 20 then
      writeln(' 20 or greater')
   else
      writeln(x)
end;

begin
   writeln(' OUTPUT FROM TEST...6.1.3-3');
   write(' The number of significant characters in an identifier is');
   signif;
   writeln(' IMPLEMENTATION DEFINED BEHAVIOUR...6.1.3-3 (IMDEFB01)')
end.
