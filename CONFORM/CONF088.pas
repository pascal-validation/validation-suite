{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.5.1-1, FILE=CONF088, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This test contains examples of legal type and variable             }
{:declarations.                                                      }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Program parameters removed.                                }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF088(output);
const
   limit = 20;
type
   natural       = 0..maxint;
   count         = integer;
   range         = integer;
   colour        = (red,yellow,green,blue);
   sex           = (male,female);
   year          = 1900..1999;
   shape         = (triangle,rectangle,circle);
   punchedcard   = array[1..80] of char;
   charsequence  = file of char;
   angle         = real;
   polar         = record
                       r : real;
                       theta : angle
                   end;
   indextype     = 1..limit;
   vector        = array[indextype] of real;
   person        = ^ persondetails;
   persondetails = record
                      name, firstname : charsequence;
                      age : integer;
                      married : boolean;
                      father,child,sibling : person;
                      case s:sex of
                         male   : (enlisted,bearded : boolean);
                         female : (mother,programmer : boolean)
                      end;
   FileOfInteger = file of integer;

var
   x,y,z,max: real;
   i,j      : integer;
   k        : 0..9;
   p,q,r    : boolean;
   operator : (plus,minus,times);
   a        : array[0..63] of real;
   c        : colour;
   f        : file of char;
   hue1,hue2: set of colour;
   p1,p2    : person;
   m,m1,m2  : array[1..10,1..10] of real;
   coord    : polar;
   pooltape : array[1..4] of FileOfInteger;
   date     : record
                 month : 1..12;
                 year  : integer
              end;
begin
   writeln(' PASS...6.5.1-1 (CONF088)')
end.
