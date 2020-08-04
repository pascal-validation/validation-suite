{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.5-4, FILE=CONF068, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This test checks that file-types can appear in a record            }
{:declaration.                                                       }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test from BNI.                                         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF068(output);
type
   recf=record
           inchar:file of char;
           case boolean of
              true:(outchar:file of char);
              false:(out:packed record
                                   outch:file of char;
                                   outint:file of integer;
                                end);
        end;
var
   r:recf;
   c:char;
begin
   rewrite(r.inchar);
   write(r.inchar,'A','B','C');
   reset(r.inchar);
   rewrite(r.out.outch);
   rewrite(r.out.outint);
   while not eof(r.inchar) do
      begin
         read(r.inchar,c);
         write(r.out.outch,c);
         r.out.outint^:=ord(c);
         put(r.out.outint);
      end;
   reset(r.out.outint);
   get(r.out.outint);
   c:=chr(r.out.outint^);
   if c='B' then writeln(' PASS...6.4.3.5-4 (CONF068)')
            else writeln(' FAIL...6.4.3.5-4 (CONF068)')
end.
