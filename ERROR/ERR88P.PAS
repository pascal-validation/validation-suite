{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.9.3.6-4, FILE=ERR88P, CLASS=ERRORHANDLING, LEVEL=0,      }
{ NUMBER=43                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: New test suggested by Visible Software.                    }
{                                                                    }

program ERR88P(output);

var
  message: packed array[1..4] of char;
  data: text;

begin
  message[1] := 'F';
  message[2] := 'A';
  message[3] := 'I';
  message[4] := 'L';
  rewrite(data);
  writeln(data,message:4);
  writeln(' PRETEST...6.9.3.6-4 (ERR88P)')
end.

