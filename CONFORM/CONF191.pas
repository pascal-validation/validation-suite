{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.10-8, FILE=CONF191, CLASS=CONFORMANCE, LEVEL=0          }
{                                                                    }
{:This test contains a record-variable-list in which all the         }
{:identifiers are identical.                                         }
{                                                                    }
{ The record-variable-list of a with-statement can contain twice or  }
{ more times the same identifier - to denote a record , its          }
{ homonymous field which is itself a record, etc.                    }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test from BNI.                                         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF191(output);
var
   i:integer;
   rec:record
          i:integer;
          rec:record
                 i:integer;
                 rec:record
                        i:integer;
                     end;
              end;
       end;
begin
   rec.i:=100;
   with rec,rec do
      begin
         i:=20;
         rec.i:=3;
      end;
   with rec,rec,rec do
      begin
         i:=rec.i+1; {Here 'i' has the same meaning as 'rec.i' ,
                      or as 'rec.i' in the previous 'with'}
   end;
   i:=rec.i+rec.rec.i+rec.rec.rec.i;
   if i=124
      then writeln(' PASS...6.8.3.10-8 (CONF191)')
      else writeln(' FAIL...6.8.3.10-8 (CONF191)')
end.
