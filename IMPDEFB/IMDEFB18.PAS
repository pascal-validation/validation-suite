{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.5-16, FILE=IMDEFB18,                                    }
{ CLASS=IMPLEMENTATIONDEFINEDBEHAVIOUR, LEVEL=0                      }
{                                                                    }
{:This test checks that files of pointers, if implemented can be     }
{:written to and correctly read.                                     }
{                                                                    }
{ Modification History :                                             }
{   V5.0: New test.                                                  }
{   V5.1: Short form messagere-written to be less prescriptive of    }
{         behaviour sought.                                          }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program IMDEFB18(output);
const
     IntBits = 30307;
type
     ptr = ^ListBoolean;
     ListBoolean = record
                      b: boolean;
                      next: ptr
                   end;
var
     ListHead: ptr;
     failed: boolean;
     f: file of ListBoolean;

procedure ConstructList(var ListHead: ptr; IntBits: integer);
     var
        temp: ptr;
     begin
     ListHead := nil;
     while IntBits <> 0 do
        begin
        new(temp);
        temp^.b := odd(IntBits);
        temp^.next := ListHead;
        ListHead := temp;
        IntBits := IntBits div 2
        end
     end;

procedure WriteList(ListHead: ptr);
     begin
     rewrite(f);
     while ListHead <> nil do
        begin
        write(f, ListHead^);
        ListHead := Listhead^.next
        end
     end;

procedure ReadAndCheck(ListHead: ptr; IntBits: integer; Copy: boolean);
     const
        NBits = 17;
       var
          temp: ListBoolean;
          Buffer: array[1..NBits] of ListBoolean;
          index : 1..NBits;
       begin
       reset(f);
       if Copy then
          begin
          index := 1;
          while not eof(f) do
             begin
             read(f, Buffer[index]);
             index := index + 1
             end;
          while IntBits <> 0 do
             begin
             if index <> 1 then
                index := index - 1;
             if odd(IntBits) <> Buffer[index].b then
                failed := true;
             IntBits := IntBits div 2
             end
          end
       else
        begin
          while ListHead <> nil do
               begin
             read(f, temp);
             if (temp.b <> ListHead^.b) or (temp.next <> ListHead^.next)
             then
                failed := true;
             ListHead := ListHead^.next
             end;
          if not eof(f) then
             failed := true
          end;
       end;

begin
  failed := false;
  ConstructList(ListHead, IntBits);
  WriteList(ListHead);
  ReadAndCheck(ListHead,IntBits,true);
  ReadAndCheck(ListHead,IntBits,false);
  if failed then writeln(' FAIL...6.4.3.5-16 (IMDEFB18)')
    else
      begin
        writeln(' OUTPUT FROM TEST...6.4.3.5-16');
        writeln(' Files of pointers can be written and correctly read');
        writeln(' IMPLEMENTATION DEFINED BEHAVIOUR...6.4.3.5-16',
                ' (IMDEFB18)');
      end;
end.
