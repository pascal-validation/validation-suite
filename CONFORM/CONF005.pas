{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.2-2, FILE=CONF005, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This program contains identifiers which some processors may        }
{:disallow because they have extended the word-symbol list.          }
{                                                                    }
{ Clause 5.1 of the Standard requires processors to be capable of    }
{ accepting all features of the language specified in clause 6,      }
{ which includes the domain of allowed identifiers. Clearly, as this }
{ is an infinite domain, a test can only inspect a few identifiers   }
{ for conformance. This test has been constructed to contain a       }
{ collection of identifiers that have been disallowed by various     }
{ implementations, or which are thought to be under threat of such   }
{ action. Definition 3.2 defines 'extension' as permitting           }
{ additional reserved words; however the wording of clause 5.1 makes }
{ it clear that the processor must be able to accept all identifiers }
{ in its Standard-conforming mode; an extended mode may be needed to }
{ enable extensions that add new reserved words.                     }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Comment revised following DIS7185; test extended to        }
{         include Ada words and some others.                         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Test extended to include 'identifiers'                     }
{                                                                    }

program CONF005(output);
var
   new:     (dispose,string,oct,hex,origin,address,absolute,
             common,segment);
   forward: (extern,external,fortran,pascal);
   class:   (module,unit,interface,unpacked,implementation,
             variant,assert,powerset,otherwise,uses);
   op:      (le,lt,ge,gt,leq,geq,ne,less,greater,nin,eor,
             impl,equiv);
   ada:     (abort,accept,access,all,at,body,constant,declare,delay,
             delta,digits,elsif,entry,exception,exit,generic,initiate,
             is,loop,null,others,out,package,packing,pragma,private,
             raise,range,renames,restricted,return,reverse,select,
             separate,subtype,task,use,when,xor);
   cobol:   (any,assign,by,call,close,continue,copy,debug,delete,
             display,global,initialize,initial,key,lock,mode,move,
             next,perform,purge,redefines,references,release,reset,
             rewind,run,tape,thru,through,using,zero);
   identifiers: (interrupt,overlay,inline);

begin
   new := string;
   forward := pascal;
   class := module;
   ada := delay;
   cobol := delete;
   op := nin;
   identifiers := inline;
   writeln(' PASS...6.1.2-2 (CONF005)')
end.
