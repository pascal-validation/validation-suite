{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.4-16, FILE=DEV263, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:This test checks that arrays having components which are not       }
{:permitted as file components cannot be passed to pack.             }
{                                                                    }
{ Modification History :                                             }
{   V5.2: New test suggested by comments made by IBM on Extended     }
{         Pascal.                                                    }
{                                                                    }

program DEV263(output,infile);

type
  intfile = file of integer;
var
  aa : array [1..1] of intfile;
  zz : packed array [1..1] of intfile;
  i : integer;

begin
  writeln(' DEVIATES...6.6.5.4-16');
  rewrite(aa[1]);
  write(aa[1],1);
  pack(aa,1,zz);
  reset(zz[1]);
  read(zz[1],i);
  writeln(' File copied!',i)
end.
