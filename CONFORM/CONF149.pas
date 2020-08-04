{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.1-9, FILE=CONF149, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This test checks that the set-constructor can denote all values    }
{:allowed by the canonic set-type to which it belongs.               }
{                                                                    }
{ This test employs sets of types which are subranges.               }
{                                                                    }
{ Modification History :                                             }
{   V4.0: Size of set lowered.                                       }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF149(output);
const
   LoOut=-10000; LoIn=0; HiIn=127; HiOut=+10000;
type
   subset = LoOut..HiOut;
   subsubset = LoIn..HiIn;
   SsetType = set of subsubset;
var
   Sset  : SsetType;
   i     : subset;
   error : boolean;

begin
   error:=false;
   Sset:=[LoIn..HiIn];
   for i:=LoOut to HiOut do
      if (i<LoIn) or (i>HiIn) then
         error:=error or (i in Sset)
      else
         error:=error or not(i in Sset);
   if not error then
      writeln(' PASS...6.7.1-9 (CONF149)')
   else
      writeln(' FAIL...6.7.1-9 (CONF149)')
end.
