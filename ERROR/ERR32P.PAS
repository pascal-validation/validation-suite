{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.6.5.3-6, FILE=ERR32P, CLASS=ERRORHANDLING, LEVEL=0,      }
{ NUMBER=05                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR32P(output);
var
   ptr : ^integer;
procedure error(var a:integer);
   var
      x : integer;
   begin
      x:=a*2
   end;
begin
   new(ptr);
   ptr^:=6;
   error(ptr^);
   dispose(ptr);
   writeln(' PRETEST...6.6.5.3-6 (ERR32P)')
end.
