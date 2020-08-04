{ SCCS file: %W%        date: %E%       time: %U% }

{ (C) Crown Copyright, 1986 }

{Date: 95-07-06}

{ Program to generate Pascal programs which are likely to find bugs
  in the code generator of compilers. }

{ The following features of Pascal are not generated, mainly because
  they do not seem to cause code-generator problems:

  variant records    -  not usually checked with optimization and
                        hence not relevant.
  files              -  accessed by subroutines which are checked by the
                        rest of the PVS. Also, files cannot be composed
                        with other types in Pascal.
  labels             -  only likely to be relevant to flow analysis
                        performed by a compiler. Since labels are rare
                        in practice, this has been ignored.
  constant decls.    -  can use constant values instead. (Indeed, the
                        test generator can obtain the effect of constant
                        expressions in constant declarations.)
  type definitions   -  the same effect is obtained by generating the 
   outside type         type declaration separately.
   definitions
  local type decls.  -  same effect is obtained by moving the type
                        declaration to the main program.
  real divide        -  to avoid problem that result may not be exact
                        i.e. 15.0/3.0 <> 5.0. Note that this equality
                        is needed to check the result, which is
                        essential for this test case generator.
  pack, unpack       -  rarely used and awkward to check.
  sin, cos, arctan   -  tests in PVS/PES should be sufficient.
  ln, exp, sqrt
}

{ The following defects in this version are acknowledged:
     Not yet implemented:-
        most statements
        procedures (apart from code blocks)
     Implemented parts:-
        No provision for lack of square and curly brackets
        expressions : see list under Component 7
        constant-valued variables assigned in declaration order
        not all output is tokenised
        complexity control too coarse
        preserving line number on reformatting not possible
}

program TestComp(input, output, Prog);

{ The parameter Prog is kept in comment brackets in this version,
  but can be made a program parameter by a consistent edit. }
{ The generator program consists of a number of components
  as follows:

  Component  1:  Built-in parameters.

  Component  2:  Token and character generation.
                 - includes Epilogue and Prologue

  Component  3:  Random number generation.

  Component  4:  Checking-code.

  Component  5:  Global Types.

  Component  6:  Variables.

  Component  7:  Expressions.

  Component  8:  Statements.

  Component  9:  Procedures/Functions.

}

  label
    13; { for terminal errors. }

  const

{  Component  1:  Built-in parameters.
                  This component only consists of constants. }

    MaxLevel = 2; { maximum depth of nesting of procs/funcs }
    MaxTypes = 100; { maximum number of types used }
    MaxIntSet = 127; { upper bound on sets generated }
    MinIntSet = 0; { lower bound on sets generated }
    MaxTint = 16000; { maxint for target machine or <= maxint }
    MaxRealBits = 16000; { max. value of integer stored exactly as real }
    MaxTintBy2 = 8000; { value to avoid overflow }
    MaxDepth = 25; { recursion depth }
    MaxTokens = 22; { No. of tokens on line, set so CheckText can be used }
    MaxSmallSize = 16; { value used to determine size of small subranges }
    MaxBuffer = 10; { size of buffer for retro-active trace-back }
    MaxTokensPerBlock = 1000;
    { Approximate maximum size of blocks. }
    UseReals = true; { flag for using type Real in generated program }
    UsePointers = true; { flag for using pointers in generated program }
    DensityOfConstants = 50;
                         { percentage of references to numeric literals in
                           expressions,  max range 1..100 although a suggested
                           range of 20..80 should be used so as to remove
                           any problems with nesting. }
    SameCharSet = false; { flag for if Host & Target have same character set }
    MinOrdChar = 0; { numeric value of first character in char set }
    MaxOrdChar = 127; { numeric value of last character in char set }
    MaxEnums   = 100; { Maximum number of enumeration values in type }
    Version = 2.0; { Version number }

  type
    positive = 0..maxint;
   { General lists are handled as lists of integers using
      the next two types. }
    ListPtr = ^ListType;
    ListType =
      record
        This: integer;
        Next: ListPtr
      end;
   { Lists of types use the index of the type into the array
                                                     GlobalTypes. }
    { Types for Component 2 }
    Token = (plus, minus, times, equals, less, greater, squarebo, squarebc,
             point, comma, colon, semicolon, arrow, roundbo, roundbc,
             notequals, lessequals, greaterequals, becomes, range, andT,
             arrayT, beginT, caseT, divT, doT, downtoT, elseT, endT, forT,
             functionT, ifT, inT, modT, nilT, notT, ofT, orT, packedT,
             procedureT, recordT, repeatT, setT, thenT, toT, untilT, varT,
             whileT, withT, failId, falseId, trueId, truncId, sqrId, CheckId,
             realId, IdIntId, IdRealId);
    { Types for Component 5 }
    TypeIndex = 1..MaxTypes;
    SetRange = MinIntSet..MaxIntSet;
    BaseSet = set of SetRange;
    TypeKind = (Rec, Arr, SetOf, Reel, Pointer, Ordinal);
    OrdinalTypes = (Enum, IntRange, Bool, Character);
    TypePtr = ^TypeRec;
    TypeRec =
      record
        IsPacked: Boolean;
        case Kind: TypeKind of
          Rec:
            (RecList: ListPtr);
          Arr:
            (Dim: integer;
             ArrIndList: ListPtr;
             EType: TypePtr);
          Reel:
            ();
          Pointer:
            (PointsTo: TypePtr);
          SetOf, Ordinal:
            (OrdinalKind: OrdinalTypes;
             Min, Max: integer;
             Indexable: boolean;   
             BaseType: TypePtr { = nil implies integer, char, boolean or
                                   enumerated type }
            )
      end;
    Depth = - 1..MaxDepth; { for controlling the depth of recursion during
                            generation. }
    { Types for Component 6 }
    Nature = (constant, variable, forControl);
   { constant means that once the value is set, then it remains
     the same. Further assignments may be made, but always to the
     pre-determined value. The actual value is determined by Status.
     variable implies that the value may change.
     forControl implies that the entire variable (of a subrange type)
     may be used as a for-statement control variable. Hence it cannot
     be threatened.  }
    Status = (undef, unset, vall);
   { undef implies that no particular value is given to the variable.
     unset implies no value has been given to the variable
                                       - its initial state.
     vall implies that the value is given by ComponentValue. }
    VarPtr = ^VarRec;
    VarRec =
      record
        VarType: TypeIndex;
        IdNo: integer; { unique reference }
        VarNature: Nature;
        NextVar: VarPtr
      end;
    VarAccessPtr = ^VarAccess;
    VarAccess =
      record
        VarIs: VarRec;
        Select: ListPtr;
        VarStatus: Status;
        ComponentType: TypeIndex;
        ComponentValue: integer;
        NextVarAccess: VarAccessPtr
      end;
    Level = 0..MaxLevel;

  var
    { Variables for Component 2 }
    TokensRequired, TokensGenerated, TokensOnLine: positive;
    LineNumber: positive;
    Prog: text;
    IdentsUsed: positive;
    NestedDepth: Depth;
    { Variables for Component 3 }
    seed1, seed2, seed3: integer; { seeds for generator }
    { Variables for Component 4 }
    CheckOpen: 1..4;
   { 1 = open code
     2 = proc calls
     3 = proc calls with line number
     4 = proc calls with traceback }
    CheckType: 0..2;
    NoChecks: integer;
    TraceType: 0..3;
   { 0 = no tracing
     1 = procedure level tracing
     2 = tracing inside procedures
     3 = random number level tracing }
    { Variables for Component 5 }
    GlobalTypes: array [TypeIndex] of TypePtr;
    TypesUsed: TypeIndex;
    { Variables for Component 6 }
    VarsUsed: array [Level] of VarPtr;
    ConstUsed: array [Level] of VarAccessPtr;
    CurrentLevel, LevelsUsed: Level;
    { Variables for Component 7 }
    Chars: packed array [1..62] of char;
    { Variables for Component 8 }
    CurrentBlock, TotalBlocks, BlockLimit: positive;
    BlockDepth: Depth;

    { All forward declarations }


  function IndexOf(P: TypePtr): TypeIndex;
    forward;


  procedure GBoolExpr(Val: boolean;
                      d: Depth);
    forward;


  procedure GRealExpr(Val: real;
                      d: Depth);
    forward;


  procedure GIntExpr(Val: integer;
                     d: Depth);
    forward;


  procedure GSetExpr(SetType: TypePtr;
                     Val: BaseSet;
                     d: Depth);
    forward;


  procedure GOrdExpr(This: TypePtr;
                     Val: integer;
                     d: Depth);
    forward;


  procedure SetSet(IntValue: integer;
                   var Result: BaseSet;
                   ThisPtr: TypePtr);
    forward;


  procedure GCharExpr(Val: char;
                      d: Depth);
    forward;


  procedure CheckVariables(L: Level);

    forward;

{  Component  2:  Token and character generation.
                 - includes Epilogue and Prologue

   This component consists of three parts:
     1. Basic Token output.
     2. Macro-expansion of Tokens, including Tracing output.
     3. ReadData, Prologue and Epilogue.
   Note that other parts of the generator sometimes output sequences
   of tokens directly (for pragmatic reasons).

}

{ Data:
   seed1 seed2 seed3 CheckOpen TraceType NestedDepth TokensRequired

   seed1, seed2, seed3
      These three values are used to seed the pseudo-random
      number generator which determines the programs produced.
      The values must be in the range 1..30000. In constructing
      some JCL to generated many test programs, one should use
      a pre-determined sequence of seed values, For instance,
      n,1,1 with n=1 to 30000 would do. Do not use the time or
      other non-deterministic value to set the seeds; for then
      the test run will not be repeatable.
   CheckOpen
      This value must be in the range 1..4 and determines the
      nature of the code used to check for correct execution.
     =1
      The generator produces open code to check execution by
      assignment to the variable 'failed'. A failure will not
      be detected immediately with this option, on the other
      hand, this value is more likely to give situations in
      which errors are produced by the code generator.
     =2
      Correct execution is monitored by procedure calls with
      this option. The code is otherwise identical to the other
      cases, and hence an error with CheckOpen=1 may be detected
      more easily if the generator is re-run with CheckOpen=2 (or
      more).
     =3
      Similar to the case with CheckOpen=2 except that an additional
      parameter is added to the procedure 'check' to record the
      line number of the call. The use of this option may not be
      needed if the compiler has a similar option which does not
      alter the code generated.
     =4
      Similar to the case with CheckOpen=3 except that a trace-back
      is recorded in the procedure 'check' which is printed out on
      a failure.
   TraceType
      A value in the range 0..3 and determines the generation of
      diagnostic comments. This output is to aid the location of
      bugs in the generator and should be of little interest to the
      user. See the comment in the procedure GTrace for full details
      of the comments generated.
     =0
      No diagnostic comments output. This value should be used since
      the text produced in minimised.
     =1
      A diagnostic comment is output for each of the main procedures
      called.
     =2
      A diagnostic comment is output for the arms of the case statements
      for the 'random' choice taken.
     =3
      Gives the values obtained from the pseudo-random number generator.
   NestedDepth
      This should be a value between 1 to 25 (=MaxDepth).
      The value determines the total depth of nesting within the
      generated program. An increase of just 1 increases the complexity
      of the programs substantially. Compilers may well reject the
      complexity of expressions generated with the value set as low as
      4. Hence you should start with 1 and increase it to see when
      problems arise.
   TokensRequired
      This value is very approximately the number of tokens in the
      program generated. Hence this determines the length of the
      program, as opposed to the complexity given by NestedDepth.
      To reduce the overheads in compilation, this value should be
      set reasonably high. Start with a value of about 3000 and
      increase it to 30000 if the machine size permits. (Note that
      the size of data required to run the generated program is
      almost always quite small.)
   N.B. This data is output as a comment by Prologue }


  procedure ReadData;
   { Reads seven integers. }


    begin
      write('Enter 3 seeds (1..30000) : ');
      read(seed1, seed2, seed3);
      write('Enter CheckOpen (1..4) : ');
      read(CheckOpen);
      write('Enter TraceType (0..3) : ');
      read(TraceType);
      write('Enter NestedDepth (1..25) : ');
      read(NestedDepth);
      write('Enter TokensRequired (1..', (maxint div 2): 1, ') : ');
      read(TokensRequired);

      {Now check if arguments in valid range - PDN 7/5/87}

      if (seed1 < 1) or (seed1 > 30000) then
        begin
        writeln('ERROR - seed1 outside of valid range  1 - 30000');
        goto 13;
        end;

      if (seed2 < 1) or (seed2 > 30000) then
        begin
        writeln('ERROR - seed2 outside of valid range 1 - 30000');
        goto 13;
        end;

      if (seed3 < 1) or (seed3 > 30000) then
        begin
        writeln('ERROR - seed3 outside of valid range 1 - 30000');
        goto 13;
        end;

      if (CheckOpen < 1) or (CheckOpen > 4) then
        begin
        writeln('ERROR - CheckOpen outside of valid range 1 - 4');
        goto 13;
        end;

      if (TraceType < 0) or (TraceType > 3) then
        begin
        writeln('ERROR - TraceType outside of valid range 0 - 3');
        goto 13;
        end;

      if (NestedDepth < 1) or (NestedDepth > MaxDepth) then
        begin
        writeln('ERROR - NestedDepth outside of valid range 1 - 25');
        goto 13;
        end;

      if (TokensRequired < 1) or (TokensRequired > maxint div 2) then
        begin
        writeln('ERROR - TokensRequired outside of valid range 1 - ',
                (maxint div 2): 1);
        goto 13;
        end;
    end; { ReadData }


  procedure Prologue;
   { Outputs initial three standard lines. }

    var
      error: boolean;
      i: integer;


    begin
      rewrite(Prog);
      write(Prog, '{ ', seed1: 6, seed2: 6, seed3: 6);
      write(Prog, CheckOpen: 6, TraceType: 6);
      writeln(Prog, NestedDepth: 6, TokensRequired: 6, ' ', Version, ' }');
      if TraceType > 2 then
        begin
        write(Prog, '{ MaxLevel = ', MaxLevel: 1);
        write(Prog, '    MaxDepth = ', MaxDepth: 1);
        writeln(Prog, '    MaxTypes = ', MaxTypes: 1);
        write(Prog, '  MaxTokens = ', MaxTokens: 1);
        write(Prog, '    MaxTokensPerBlock = ', MaxTokensPerBlock: 1);
        writeln(Prog, '    DensityOfConstants = ', DensityOfConstants: 1);
        write(Prog, '  MaxTint = ', MaxTint: 1);
        write(Prog, '    MaxRealBits = ', MaxRealBits: 1);
        writeln(Prog, '    MaxIntSet = ', MaxIntSet: 1);
        write(Prog, '  MinIntSet = ', MinIntSet: 1);
        write(Prog, '    MaxSmallSize = ', MaxSmallSize: 1);
        writeln(Prog, '    UseReals = ', UseReals);
        write(Prog, '  UsePointers = ', UsePointers);
        write(Prog, '    SameCharSet = ', SameCharSet);
        writeln(Prog, '    MinOrdChar = ', MinOrdChar: 1);
        write(Prog, '  MaxOrdChar = ', MaxOrdChar: 1);
        writeln(Prog, ' }');
        writeln(Prog);
        LineNumber := 10
        end
      else
        LineNumber := 3;
      writeln(Prog, 'program test(output);');
      TokensOnLine := 0;
      TokensGenerated := 0;
      IdentsUsed := 0;
      CurrentLevel := 0;
      NoChecks := 0;
      Chars :=
              'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'
               ;
      if SameCharSet then
        begin
        error := false;
        for i := 1 to 62 do
          if (ord(Chars[i]) < MinOrdChar) or (ord(Chars[i]) > MaxOrdChar) then
            error := true;
        if error then
          begin
          writeln('ERROR - MinOrdChar and MaxOrdChar have illegal values');
          goto 13
          end;
        end;
    for i := 1 to MaxTypes do
      GlobalTypes[i] := nil
    end; { Prologue }


  procedure NewLine;
   { Called by CheckLine and in other cases to ensure lines
     are not too long. }


    begin
      writeln(Prog);
      LineNumber := LineNumber + 1;
      TokensOnLine := 0
    end; { NewLine }


  procedure CheckLine;
   { Outputs NewLine if existing line too long. }


    begin
      TokensGenerated := TokensGenerated + 1;
      TokensOnLine := TokensOnLine + 1;
      if TokensOnLine >= MaxTokens then
        NewLine
    end; { CheckLine }


  procedure GToken(T: Token);
   { Outputs the token T, and calls CheckLine. }


    begin
      case T of
        plus:
          write(Prog, '+');
        minus:
          write(Prog, '-');
        times:
          write(Prog, '*');
        equals:
          write(Prog, '=');
        less:
          write(Prog, '<');
        greater:
          write(Prog, '>');
        squarebo:
          write(Prog, '[');
        squarebc:
          write(Prog, ']');
        point:
          write(Prog, '.');
        comma:
          write(Prog, ',');
        colon:
          write(Prog, ':');
        semicolon:
          write(Prog, ';');
        arrow:
          write(Prog, '^');
        roundbo:
          write(Prog, '(');
        roundbc:
          write(Prog, ')');
        notequals:
          write(Prog, '<>');
        lessequals:
          write(Prog, '<=');
        greaterequals:
          write(Prog, '>=');
        becomes:
          write(Prog, ':=');
        range:
          write(Prog, '..');
        andT:
          write(Prog, 'and ');
        arrayT:
          write(Prog, 'array ');
        beginT:
          write(Prog, 'begin ');
        caseT:
          write(Prog, 'case ');
        divT:
          write(Prog, 'div ');
        doT:
          write(Prog, 'do ');
        downtoT:
          write(Prog, 'downto ');
        elseT:
          write(Prog, 'else ');
        endT:
          write(Prog, 'end ');
        forT:
          write(Prog, 'for ');
        functionT:
          write(Prog, 'function ');
        ifT:
          write(Prog, 'if ');
        inT:
          write(Prog, 'in ');
        modT:
          write(Prog, 'mod ');
        nilT:
          write(Prog, 'nil ');
        notT:
          write(Prog, 'not ');
        ofT:
          write(Prog, 'of ');
        orT:
          write(Prog, 'or ');
        packedT:
          write(Prog, 'packed ');
        procedureT:
          write(Prog, 'procedure ');
        recordT:
          write(Prog, 'record ');
        repeatT:
          write(Prog, 'repeat ');
        setT:
          write(Prog, 'set ');
        thenT:
          write(Prog, 'then ');
        toT:
          write(Prog, 'to ');
        untilT:
          write(Prog, 'until ');
        varT:
          write(Prog, 'var ');
        whileT:
          write(Prog, 'while ');
        withT:
          write(Prog, 'with ');
        failId:
          write(Prog, 'failed ');
        falseId:
          write(Prog, 'false ');
        trueId:
          write(Prog, 'true ');
        truncId:
          write(Prog, 'trunc');
        sqrId:
          write(Prog, 'sqr');
        CheckId:
          write(Prog, 'check');
        realId:
          write(Prog, 'real ');
        IdIntId:
          write(Prog, 'IdentInt ');
        IdRealId:
          write(Prog, 'IdentReal ')
        end;
      CheckLine
    end; { GToken }


  procedure GTypeId(P: TypePtr);
   { Generate type identifier. }
    var
      index: TypeIndex;

    begin
      index := IndexOf(P);
      if index = 1 then
	write(Prog, 'integer ')
      else if index = 2 then
	write(Prog, 'char ')
      else if index = 3 then
	write(Prog, 'boolean ')
      else
        write(Prog, 'T', index: 1, ' ');
      CheckLine
    end; { GTypeId }


  procedure GInt(i: integer);


    begin
      write(Prog, i: 1, ' ');
      CheckLine
    end; { GInt }


  procedure GIdent(C: char;
                   i: integer);


    begin
      write(Prog, C, i: 1, ' ');
      CheckLine
    end; { GIdent }


  procedure GTrace(C: char;
                   i: integer;
                   level: integer);
   { Tracing comments generated according to this table:
     Character  procedure      value         level
     +          Various        --            0 (code to be added)
     a          GBoolExpr      ord(Val)      2
     b          randBias       randBias      3
     B          GBoolExpr      Depth         1
     C          InitConstant   ord(Kind)     2
     D          GIntExpr       Val           0
     E          GBoolVar       ord(Val)      0
     E          GVarAccess     ord(Kind)     0
     F          InitConstant   f1, f2        2
     G          GIntExpr       Val           0
     H          GRealExpr      trunc(Val)    0
     I          GIntExpr       Depth         1
     J          GCharExpr      Depth         1
     K          InitOrdConstant Val          0
     L          GEnumVal       IndexOf(P)    0
     M          GOrd           Kind          0
     r          RandI          RandI         3
     R          GRealExpr      Depth         1
     s          GSetExpr       p,q           2
     S          GSetExpr       Depth         1
     t          InitConstant   0             2
     T          GRealExpr      trunc(Val)    2
     V          GIntExpr       Val           2
     V          GCharExpr      ord(Val)      2
     z          GOrdExpr       ord(Kind)     0
     Z          GCharExpr      ord(Val)      0
     [          InitConstant   Dim           2
   }

    var
      Preserve: positive;


    begin
      if level <= TraceType then
        begin
      { Avoid increase in TokensGenerated since it influences code
        produced. }
        Preserve := TokensGenerated;
        write(Prog, '{');
        GIdent(C, i);
        write(Prog, '}');
        TokensGenerated := Preserve
        end;

      if level = 0 then
        begin
        writeln('Consistency check fails - report to author');
        writeln(1 div level); { to produce post-mortem }
        goto 13
        end;
      CheckLine
    end; { GTrace }


  procedure GReal(Val: real);


    begin
      write(Prog, trunc(Val): 1, '.0 ');
      CheckLine
    end; { GReal }


  procedure GChar(C: char);

    var
      printable: boolean;
      i: integer;


    begin
      printable := false;
      for i := 1 to 62 do
        if C = Chars[i] then
          printable := true;
      if printable then
        write(Prog, '''', C, '''')
      else
        write(Prog, 'chr(', ord(C), ')');
      CheckLine
    end; { GChar }

  procedure GEnumVal(P: TypePtr; Val: positive);

    { outputs an enumeration value of type P (which may be a subrange) }

    begin
      if P^.BaseType <> nil then
	P := P^.BaseType;
      if (P^.Kind <> Ordinal) and (P^.Kind <> SetOf) then
	GTrace('L', IndexOf(P), 0);
      write(Prog, 'T', IndexOf(P): 1, 'E', Val: 1, ' ');
      CheckLine
    end;

  procedure GOrd(This: TypePtr;
                 Val: integer);

    begin
      if (This^.Kind = Ordinal) or (This^.Kind = SetOf) then
      case This^.OrdinalKind of
        IntRange:
          GInt(Val);
        Bool:
          if Val = 0 then
            GToken(falseId)
          else
            GToken(trueId);
        Character:
          GChar(chr(Val));
        Enum:
          GEnumVal(This, Val);
        end
      else
	GTrace('M', ord(This^.Kind), 0);
    end; { GOrd }


  procedure Epilogue;
   { Outputs the last five lines of the test program. }


    begin
      NewLine;
      if CheckOpen <> 1 then
        writeln(Prog, 'writeln(''Checks performed= '',NT);');
      writeln(Prog, 'if failed then');
      writeln(Prog, '   writeln(''FAILED'')');
      writeln(Prog, 'else');
      writeln(Prog, '   writeln(''PASS,', NoChecks: 1, ' Checks'')');
      writeln(Prog, 'end.{');
      writeln(Prog, 'Lines of code generated = ', LineNumber + 5: 1, '}');
      reset(Prog);
      writeln('Lines of code generated = ', LineNumber + 5: 1)
    end; { Epilogue }

{  Component  3:  Random number generation + miscellanious functions.

     Note that one can use the value of seedi mod n to obtain
     a 'random' value without altering subsequent values. 
}


  function Isqrt(Val: integer): integer;

    var
      tmp: positive;


    begin
      if Val = 0 then
        Isqrt := 0
      else
        begin
        tmp := trunc(sqrt(Val));

        { adjust so that    sqrt(tmp) <= x }
        while sqr(tmp) > Val do
          tmp := tmp - 1;

        { adjust so that    sqrt(tmp+1) > x }
        { N.B. sqr(tmp+1) = sqr(tmp) + (2*tmp+1) }
        while sqr(tmp) <= (Val - (2 * tmp + 1)) do
          tmp := tmp + 1;

        Isqrt := tmp
        end;
    end; { Isqrt }


  function RandI(low, high: integer): integer;
   { generates value in low..high, uniformly }

    var
      rndm: real;
      temp: integer;


    begin
      seed1 := 171 * (seed1 mod 177) - 2 * (seed1 div 177);
      seed2 := 172 * (seed2 mod 176) - 35 * (seed2 div 176);
      seed3 := 170 * (seed3 mod 178) - 63 * (seed3 div 178);
      if seed1 < 0 then
        seed1 := seed1 + 30269;
      if seed2 < 0 then
        seed2 := seed2 + 30307;
      if seed3 < 0 then
        seed3 := seed3 + 30323;
      rndm := seed1 / 30269.0 + seed2 / 30307.0 + seed3 / 30323.0;
      rndm := rndm - trunc(rndm);
      temp := trunc(rndm * (high + 1.0) + (1.0 - rndm) * low);
      { Guard against rounding error and negative values. }
      if (temp > high) or (temp < low) then
        if odd(seed1) then
          temp := high
        else
          temp := low;
      GTrace('r', temp, 3);
      RandI := temp
    end; { RandI }


  function randBias(low, high: integer): integer;
   { generates value in low..high with bias towards
     2^n, 2^n - 1, 2^n + 2^m }

    var
      max, np, i, p, temp: integer;


    function power2(i: integer): integer;


      begin
        if i = 0 then
          power2 := 1
        else if i = 1 then
          power2 := 2
        else
          power2 := power2(i div 2) * power2(i - i div 2)
      end;


    begin
      if (seed1 mod 3 = 0) or (1.0 * high - low < 4) then
        temp := RandI(low, high)
      else
        begin
        max := abs(low);
        if abs(high) > max then
          max := abs(high);
      { np := trunc(ln(max)/ln(2));
      Above statement replaced by equivalent code below to avoid
      differences in generated code due to rounding error. }
        i := max;
        np := - 1;
        while i <> 0 do
          begin
          i := i div 2;
          np := np + 1
          end;
        repeat
          i := RandI(0, np);
          p := power2(i);
          case seed1 mod 7 of
            0, 1, 2:
              if odd(seed2) and (low < 0) then
                p := - p;
            3, 4:
              begin
              p := p - 1;
              if odd(seed2) and (low < 0) then
                p := - p
              end;
            5:
              if i <> 0 then
                p := p + power2(RandI(0, i - 1));
            6:
              if odd(seed3) then
                p := low
              else
                p := high
            end;
        until (p >= low) and (p <= high);
        temp := p
        end;
      GTrace('b', temp, 3);
      randBias := temp
    end; { randBias }


  procedure RandSet(SetType: TypePtr;
                    var Val: BaseSet);
   { Generates a simple random set. }

    var
      low, high: SetRange;


    begin
      low := RandI(SetType^.Min, SetType^.Max);
      high := RandI(SetType^.Min, SetType^.Max);
      case seed1 mod 4 of
        0:
          Val := [];
        1:
          Val := [low];
        2:
          Val := [low, high];
        3:
          if low < high then
            Val := [low..high]
          else
            Val := [high..low];
        end { case }
    end; { RandSet }



  procedure RandOrdSType(This: TypePtr;
                        Declare, ForSet, CanIndex: boolean);
    { Assigns to the record pointed to by This a random ordinal or set
      type whose characteristics are determined by the other parameters.
      Declare: true means suitable for declaration (ends have printable
               characters if base type is char)
      ForSet : range is in that permitted for set
      Indexable: range is in that permitted for an index }

    var
      x, y: integer;

  procedure RandCharsRange(var low, high: integer);
   { Random subrange low..high of array Chars[] }

    begin
      case RandI(0, 2) of
        0:
          begin
          low := RandI(1, 26); { in range 'a' .. 'z' }
          high := RandI(low, 26)
          end;
        1:
          begin
          low := RandI(27, 52); { in range 'A' .. 'Z' }
          high := RandI(low, 52)
          end;
        2:
          begin
          low := RandI(53, 62); { in range '0' .. '9' }
          high := RandI(low, 62)
          end;
        end;
    end; { RandCharsRange }

    procedure SubRange;
      { Computes a subrange of existing types }
      const
	 limit = 100;
      var
	 temp: TypeIndex;
	 i: 1..limit;
	 OK: boolean;
      begin
      i := 1;
      repeat
	temp := RandI(1, TypesUsed);
	OK := GlobalTypes[temp] <> nil;
	if OK then
	  if GlobalTypes[temp] = This then
	    OK := false
          else
	    with GlobalTypes[temp]^ do
	      begin
	      OK := Kind = Ordinal;
	      if OK then
		OK := This^.Min <= Min;
              if OK then
		OK := This^.Max >= Max;
              if OK then
		OK := OrdinalKind <> Character;
              end;
         i := i + 1;
      until OK or (i = limit);
      if not OK then
	temp := 1; { default to integer }
      { set up This as subrange of GlobalTypes[temp] }
      This^.BaseType := GlobalTypes[temp];
      if This^.Min < This^.BaseType^.Min then
	This^.Min := This^.BaseType^.Min;
      if This^.Max > This^.BaseType^.Max then
	This^.Max := This^.BaseType^.Max;
      This^.OrdinalKind := This^.BaseType^.OrdinalKind;
      This^.Min := RandI(This^.Min, This^.Max);
      This^.Max := RandI(This^.Min, This^.Max);
      while This^.BaseType^.BaseType <> nil do
	 This^.BaseType := This^.BaseType^.BaseType;
      end;

    begin
    with This^ do
      begin
      if ForSet then
        begin
        IsPacked := (RandI(0, 1) = 0);
        Kind := SetOf
        end
      else
        begin
        IsPacked := false;
        Kind := Ordinal
        end;
      { set Min and Max to outer permitted limits }
      Min := -MaxTint;
      Max := MaxTint;
      if ForSet and (Min < MinIntSet) then
        Min := MinIntSet;
      if ForSet and (Max > MaxIntSet) then
        Max := MaxIntSet;
      if CanIndex and ((Max-Min) > MaxSmallSize) then
        Max := Min + MaxSmallSize;
        case RandI(0, 3) of
          0:
            begin
            OrdinalKind := IntRange;
            BaseType := GlobalTypes[1];
            {reduce large ranges using RandBias, otherwise RandI}
            if Max-Min > 1000 then
              begin
              Min := randBias( Min, Max);
              Max := randBias( Min, Max)
              end
            else
              begin
              Min := RandI( Min, Max);
              Max := RandI( Min, Max)
              end
            end;
          1:
            begin
            OrdinalKind := Character;
            BaseType := GlobalTypes[2];
            if Min < MinOrdChar then
              Min := MinOrdChar;
            if Max > MaxOrdChar then
              Max := MaxOrdChar;
            if SameCharSet and not Declare then
              begin
              Min := RandI(Min, Max);
              Max := RandI(Min, Max)
              end
            else
              begin
              RandCharsRange(x, y);
              Min := ord(Chars[x]);
              Max := ord(Chars[y])
              end;
            end;
          2:
            begin
            OrdinalKind := Bool;
            BaseType := GlobalTypes[3];
            Min := RandI(ord(false), ord(true));
            Max := RandI(This^.Min, ord(true))
            end;
          3:
	    if ForSet then
	      SubRange
            else if RandI(0, 3) = 1 then
	      SubRange
            else
	      begin
	      { declare new enumeration type }
	      OrdinalKind := Enum;
	      Max := Max - Min;
	      Min := 0;
	      if Max > MaxEnums then
		Max := MaxEnums;
              Max := randBias(Min, Max);
              BaseType := nil
	      end;
          end; { case }
	  Indexable := (Max - Min) <= MaxSmallSize;
        end; { with }
    end; { RandOrdSType }

{  Component  4:  Checking-code.

     The procedure Monitoring is called to generate global variables
     and procedures/functions used by the system.

     The two procedures CheckStart and CheckFinish are used at any
     level to produce executable statements to check the execution.

}


  procedure Monitoring;
   { Generates procedure for testing if needed and IdentInt,
     IdentReal }


    begin
   { generate -
     procedure check(b: boolean
                     [3,4"; L: integer"] );
              [4 "var i: integer;"]
        begin
        NT := NT + 1;
        [4 "if ptr=0 then
              begin
              for i:=1 to MaxBuffer do
                  buf[i]:=0;
              ptr := 1
              end;
           buf[ptr]:=L;" ]
        if b then
           begin
           writeln('Test ', NT:1, ' failed');
           [3 "write(' On line', L:1);"]
           [4 "if not failed then
                 begin
                 write('TRACE');
                 for i := ptr to ptr+MaxBuffer-1 do
                    write(buf[i mod MaxBuffer+1]:4);
                 writeln
                 end;"]
           failed:=true;
           end;
        [4 "ptr := ptr mod MaxBuffer+1;" ]
        end;
   function IdentInt(i: integer): integer;
      function invert(t2:integer): integer;
         begin
         invert:=-t2
         end;
      begin
      if i<0 then
         IdentInt := -IdentInt(abs(i))
      else 
         IdentInt := invert(invert(i))
      end;

   function IdentReal(x: real): real;
      begin
      IdentReal := IdentInt(trunc(x))
      end;
    }
      if CheckOpen <> 1 then
        begin
        NewLine;
        GToken(procedureT);
        GToken(CheckId);
        GToken(roundbo);
        write(Prog, 'b: boolean');
        if CheckOpen <> 2 then
          write(Prog, ';L:integer');
        GToken(roundbc);
        GToken(semicolon);
        NewLine;
        if CheckOpen = 4 then
          write(Prog, 'var i: integer;');
        write(Prog, 'begin NT := NT + 1;');
        if CheckOpen = 4 then
          begin
          write(Prog, 'if ptr=0 then begin');
          NewLine;
          write(Prog, 'for i:=1 to ', MaxBuffer: 1, ' do buf[i]:=0;');
          NewLine;
          write(Prog, 'ptr:=1; end; buf[ptr]:=L;');
          NewLine;
          end;
        write(Prog, 'if b then');
        NewLine;
        GToken(beginT);
        write(Prog, 'write(''Test '',NT:1,'' failed '');');
        NewLine;
        if CheckOpen <> 2 then
          write(Prog, 'writeln('' On Line '', L:1); ');
        if CheckOpen = 4 then
          begin
          write(Prog, 'if not failed then begin write(''TRACE'');');
          NewLine;
          write(Prog, 'for i:=ptr to ptr+', MaxBuffer - 1: 1, ' do');
          write(Prog, ' write(buf[i mod ', MaxBuffer: 1, '+1]:4);');
          NewLine;
          write(Prog, 'writeln end;');
          end;
        GToken(failId);
        GToken(becomes);
        GToken(trueId);
        GToken(semicolon);
        GToken(endT);
        GToken(semicolon);
        if CheckOpen = 4 then
          write(Prog, 'ptr:=ptr mod ', MaxBuffer: 1, '+1;');
        GToken(endT);
        GToken(semicolon);
        end;
      NewLine;
      write(Prog, 'function IdentInt(i:integer): integer;');
      NewLine;
      write(Prog, 'function invert(t2:integer):integer;');
      NewLine;
      write(Prog, 'begin invert:=-t2 end;');
      NewLine;
      GToken(beginT);
      NewLine;
      write(Prog, 'if i<0 then IdentInt:= -IdentInt(abs(i))');
      NewLine;
      write(Prog, 'else IdentInt := invert(invert(i))');
      GToken(endT);
      GToken(semicolon);
      NewLine;

      if UseReals then
        begin
        write(Prog, 'function IdentReal(x:real):real;');
        NewLine;
        write(Prog, 'begin IdentReal := IdentInt(trunc(x)) end;');
        NewLine
        end;
    end; { Monitoring }

   { There are two checking procedures for generating self-checking
    statements: CheckStart and CheckFinish. The code generated
    between these two calls must be that of a boolean expression
    whose value is false. }


  procedure CheckStart;


    begin
      NoChecks := NoChecks + 1;
      case CheckOpen of
        1:
          begin
      { RandI must not be called here so that the non-checking code
        is independent of the checking code. }
          CheckType := seed2 mod 3;
          case CheckType of
            0:
              begin
              GToken(ifT)
              end;
            1:
              begin
              GToken(failId);
              GToken(becomes);
              end;
            2:
              begin
              GToken(failId);
              GToken(becomes);
              GToken(failId);
              GToken(orT)
              end;
            end;
          end;
        2, 3, 4:
          begin
          GToken(CheckId);
          GToken(roundbo)
          end;
        end;
    end; { CheckStart }


  procedure CheckFinish;


    begin
      case CheckOpen of
        1:
          begin
          case CheckType of
            0:
              begin
              GToken(thenT);
              GToken(failId);
              GToken(becomes);
              GToken(trueId)
              end;
            1:
              begin
              GToken(orT);
              GToken(failId)
              end;
            2:
              begin
              end;
            end;
          end;
        2:
          GToken(roundbc);
        3, 4:
          begin
          GToken(comma);
          GInt(LineNumber);
          GToken(roundbc)
          end;
        end;
    end; { CheckFinish }

{  Component  5:  Global Types.
}


  function IndexOf {(P: TypePtr): TypeIndex} ;
   { Produces the index corresponding to P, ie.
     GlobalTypes[IndexOf(P)] = P  }

    var
      i: 0..MaxTypes;


    begin
      i := 0;
      repeat
        i := i + 1;
      until GlobalTypes[i] = P;
      IndexOf := i
    end; { IndexOf }

  procedure GTypes;
   { generates the global types }

    var
      temp, count, max: integer;
      i, n1, n2, n3: 1..MaxTypes;
      p: ListPtr;
      done: boolean;


    begin
      { First constructs and then generates the type declarations. }
      write(Prog, 'type ');
      { Set TypesUsed to about TokensRequired div 200 }
      if TokensRequired div 150 > MaxTypes then
        TypesUsed := MaxTypes
      else
        TypesUsed := RandI(TokensRequired div 250, TokensRequired div 150);

      { Reduce the number of types used if the number of expressions
        which will be generated is small. Number of expressions generated
        is about (2^NestedDepth) / TokensRequired }
      temp := TokensRequired;
      count := 1;
      while temp <> 1 do
        begin
        count := count + 1;
        temp := temp div 2
        end;
      { Number of expressions generated is about 2^(count - NestedDepth) }
        max := 1;
        for temp := 1 to (count - NestedDepth) do
          max := max * 2;
        if TypesUsed > max then
          TypesUsed := max;
      if TypesUsed < 15 then
	TypesUsed := 15; { minimum sensible value }
      { n1 := 1+trunc(0.2*TypesUsed);
        n2 := 1+trunc(0.4*TypesUsed);
        n3 := 1+trunc(0.6*TypesUsed);
        The above code has been replaced by equivalent code below to
        avoid differences in the generated Pascal caused by rounding errors. }
      { Preload the predefined types integer, char and boolean to
        be available as base types. }
      for i := 1 to 3 do
        begin
        new(GlobalTypes[i]);
        with GlobalTypes[i]^ do
          begin
          IsPacked := false;
          Kind := Ordinal;
          BaseType := nil;
          if i=1 then
            begin
            OrdinalKind := IntRange;
            Min := -MaxTint;
            Max := MaxTint
            end
          else if i=2 then
            begin
            OrdinalKind := Character;
            Min := MinOrdChar;
            Max := MaxOrdChar
            end
          else
            begin
            OrdinalKind := Bool;
            Min := 0;
            Max := 1
            end
          end;
        end;
      n1 := 4 + TypesUsed div 5;
      n2 := 4 + 2 * TypesUsed div 5;
      n3 := 4 + 3 * TypesUsed div 5;

      {    3..n1         indexable subranges
        n1+1..n2         random subranges
        n2+1..n3         pointer types
        n3+1..TypesUsed  other types  }
      for i := 4 to TypesUsed do
        begin
        new(GlobalTypes[i]);
        with GlobalTypes[i]^ do
          begin
          if i <= n2 then
            RandOrdSType(GlobalTypes[i], true, false,(i <= n1))
          else if (i <= n3) and (UsePointers) then
          { only use pointers if allowed (i.e. UsePointers = true) }
            begin
            IsPacked := false;
            Kind := Pointer
            end
          else
            begin
            { generate Rec, Arr, SetOf or Reel }
            IsPacked := odd(seed3);

            { option to prevent use of type Real }
            repeat
              temp := RandI(0, 5);
              if (not UseReals) and (temp = 3) then
                temp := - 1
            until temp >= 0;

            case temp of
              0, 4:
                begin
                Kind := Rec;
                new(RecList);
                done := false;
                p := RecList;
                repeat
                  p^.This := RandI(1, i - 1);
                  if seed1 mod 5 = 0 then
                    begin
                    p^.Next := nil;
                    done := true
                    end
                  else
                    begin
                    new(p^.Next);
                    p := p^.Next
                    end
                until done;
                end;
              1, 5:
                begin
                Kind := Arr;
                EType := GlobalTypes[RandI(1, i - 1)];
                new(ArrIndList);
                done := false;
                Dim := 1;
                p := ArrIndList;
                repeat
                  p^.This := RandI(3, n1);
                  if seed1 mod 10 <> 0 then
                    begin
                    p^.Next := nil;
                    done := true
                    end
                  else
                    begin
                    Dim := Dim + 1;
                    new(p^.Next);
                    p := p^.Next
                    end
                until done;
                end;
              2:
                RandOrdSType(GlobalTypes[i], true, true, false);
              3:
                begin
                Kind := Reel;
                IsPacked := false;
                end;
              end; { case }
            end;
          end; { with }
        end; { for }

      { if pointers have been generated, assign types to them }
      if UsePointers then
        for i := n2 + 1 to n3 do
          begin
          repeat
            temp := RandI(1, TypesUsed);
          until (temp < i) or (temp > n3);
          GlobalTypes[i]^.PointsTo := GlobalTypes[temp]
          end;

      { print out types }
      for i := 4 to TypesUsed do
        with GlobalTypes[i]^ do
          begin
          NewLine;
          GIdent('T', i);
          GToken(equals);
          if IsPacked then
            GToken(packedT);
          case Kind of
            Rec:
              begin
              GToken(recordT);
              p := RecList;
              temp := 1;
              done := false;
              repeat
                GIdent('R', temp);
                temp := temp + 1;
                GToken(colon);
                GTypeId(GlobalTypes[p^.This]);
                GToken(semicolon);
                if p^.Next = nil then
                  done := true
                else
                  p := p^.Next;
              until done;
              GToken(endT);
              end;
            Arr:
              begin
              GToken(arrayT);
              GToken(squarebo);
              p := ArrIndList;
              for temp := 1 to Dim do
                begin
                GTypeId(GlobalTypes[p^.This]);
                if temp <> Dim then
                  begin
                  GToken(comma);
                  p := p^.Next
                  end
                end;
              GToken(squarebc);
              GToken(ofT);
              GTypeId(EType)
              end;
            SetOf:
              begin
              GToken(setT);
              GToken(ofT);
              GOrd(GlobalTypes[i], Min);
              GToken(range);
              GOrd(GlobalTypes[i], Max)
              end;
            Ordinal:
              case OrdinalKind of
                IntRange, Bool, Character:
                  begin
                  GOrd(GlobalTypes[i], Min);
                  GToken(range);
                  GOrd(GlobalTypes[i], Max)
                  end;
                Enum:
                  if GlobalTypes[i]^.BaseType = nil then
                       begin
                       GToken(roundbo);
                       GOrd(GlobalTypes[i], 0);
                       for temp := 1 to Max do
                          begin
                          GToken(comma);
                          GOrd(GlobalTypes[i], temp)
                          end;
                       GToken(roundbc)
                       end
                    else
                       begin
                       GOrd(GlobalTypes[i], Min);
                       GToken(range);
                       GOrd(GlobalTypes[i], Max)
                       end;

                end;
            Reel:
              begin
              GToken(realId)
              end;
            Pointer:
              begin
              GToken(arrow);
              GTypeId(PointsTo)
              end;
            end;
          GToken(semicolon)
          end
    end; { GTypes }

{  Component  6:  Variables.
}


  procedure GVars(L: Level);
   { Generate code for variable declarations. }
     { Details of the variables declared are linked on to the
       pointer VarsUsed[L] }

    var
      TType: TypeIndex;
      Last, Current: VarPtr;
      NumberDec, i: positive;


    begin
      if L = 0 then
        begin
        NewLine;
        GToken(varT);
        GToken(failId);
        write(Prog, ':boolean;');
        if CheckOpen <> 1 then
          write(Prog, 'NT: integer;')
        end;
      if CheckOpen = 4 then
        begin
        NewLine;
        write(Prog, 'buf:array[1..', MaxBuffer: 1, ']of integer;');
        write(Prog, 'ptr:integer;');
        NewLine
        end;
      write(Prog, 'Chars:packed array[1..62] of char;');
      NewLine;
      NumberDec := RandI(1, (MaxLevel - L) * TypesUsed + 1);
      Last := nil;
      for i := 1 to NumberDec do
        begin
        TType := RandI(1, TypesUsed);
        new(Current);
        if Last = nil then
          VarsUsed[L] := Current
        else
          Last^.NextVar := Current;
        with Current^ do
          begin
          VarType := TType;
          IdNo := IdentsUsed;
          IdentsUsed := IdentsUsed + 1;
          if {odd(seed1)} true then
            VarNature := constant
          else if (GlobalTypes[TType]^.Indexable) and odd(seed2) then
            VarNature := forControl
          else
            VarNature := variable;
          GIdent('V', IdNo);
          GToken(colon);
          GTypeId(GlobalTypes[TType]);
          GToken(semicolon)
          end;
        Last := Current
        end;
      Current^.NextVar := nil;
      NewLine
    end; { GVars }


  procedure GVarAccess(X: VarAccess;
                       d: Depth);
   { Generate code for the variable access. }

    var
      SelectList: ListPtr;
      TypeDetails: TypePtr;
      count: positive;
      RList: ListPtr;


    begin
      if d > 0 then
        d := d - 1;
      GIdent('V', X.VarIs.IdNo);
      TypeDetails := GlobalTypes[X.VarIs.VarType];
      SelectList := X.Select;
      { Go down recursive structure if needed. }
      while SelectList <> nil do
        begin
        case TypeDetails^.Kind of
          Reel, Ordinal, SetOf:
            GTrace('E', ord(TypeDetails^.Kind), 0);
          Pointer:
            begin
            GToken(arrow);
            TypeDetails := TypeDetails^.PointsTo;
            end;
          Rec:
            begin
            count := SelectList^.This;
            GToken(point);
            GIdent('R', count);
            RList := TypeDetails^.RecList;
            while count <> 1 do
              begin
              count := count - 1;
              RList := RList^.Next
              end;
            TypeDetails := GlobalTypes[RList^.This]
            end;
          Arr:
            begin
            count := TypeDetails^.Dim;
            GToken(squarebo);
            RList := TypeDetails^.ArrIndList;
            while count <> 1 do
              begin
              count := count - 1;
              GOrdExpr(GlobalTypes[RList^.This], SelectList^.This, d);
              GToken(comma);
	      RList := RList^.Next;
              SelectList := SelectList^.Next
              end;
            GOrdExpr(GlobalTypes[RList^.This], SelectList^.This, d);
            GToken(squarebc);
            TypeDetails := TypeDetails^.EType
            end;
          end; {case}
        SelectList := SelectList^.Next
        end; {while}
    end; { GVarAccess }


  procedure GIntVar(Val: integer;
                    d: Depth);
   { Generate code to access an integer value taking a variable
     if possible. }

    var
      L: Level;
      OK, This: VarAccessPtr;
      ValVar: integer;


    begin
      if d > 0 then
        d := d - 1;
      if CurrentLevel = 0 then
        L := CurrentLevel
      else
        L := RandI(0, CurrentLevel);
      This := ConstUsed[L];
      OK := nil;
      while This <> nil do
        begin
        if (GlobalTypes[This^.ComponentType]^.Kind = Ordinal) and
           (This^.VarStatus = vall) then
          begin
          if GlobalTypes[This^.ComponentType]^.OrdinalKind = IntRange then
            OK := This;
          end;
        if RandI(0, 6) = 0 then
          This := nil
        else
          This := This^.NextVarAccess
        end;
      This := OK;
      if This = nil then
        GIntExpr(Val, d)
      else
        begin
        { Variable found. }
        GVarAccess(This^, d);
        ValVar := This^.ComponentValue;
        { Correct value to that required. }
        if ((ValVar > 0) and (Val < 0)) or ((ValVar < 0) and (Val > 0)) then
          begin { to avoid overflow}
          GToken(minus);
          GIntExpr(ValVar, d);
          GToken(plus);
          GIntExpr(Val, d)
          end
        else if Val <> ValVar then
          begin
          GToken(plus);
          GIntExpr(Val - ValVar, d)
          end;
        end;
    end; { GIntVar }


  procedure GCharVar(Val: char;
                     d: Depth);

    var
      ValVar: char;
      L: Level;
      OK, This: VarAccessPtr;
      i: 1..62;      
      pos: -1..62;

    begin
      if d > 0 then
        d := d - 1;
      if CurrentLevel = 0 then
        L := CurrentLevel
      else
        L := RandI(0, CurrentLevel);
      This := ConstUsed[L];
      OK := nil;
      while This <> nil do
        begin
        if (GlobalTypes[This^.ComponentType]^.Kind = Ordinal) and
           (This^.VarStatus = vall) then
          begin
          if GlobalTypes[This^.ComponentType]^.OrdinalKind = Character then
            OK := This;
          end;
        if RandI(0, 6) = 0 then
          This := nil
        else
          This := This^.NextVarAccess
        end;
      This := OK;
      if This = nil then
        GCharExpr(Val, d)
      else
        begin
        { Variable found. }
        ValVar := chr(This^.ComponentValue);
        if ValVar = Val then
          GVarAccess(This^, d)
        else
          begin
          { correct expression }
          if SameCharSet then
            begin
            { chr( ord(ValVar) [+/-] ord(Correction) ) }
            write(Prog, 'chr(ord(');
            GVarAccess(This^, d);
            GToken(roundbc);
            if ValVar < Val then
              begin
              write(Prog, '+ ord(');
              GCharExpr(chr(ord(Val) - ord(ValVar)), d)
              end
            else
              begin
              write(Prog, '- ord(');
              GCharExpr(chr(ord(ValVar) - ord(Val)), d)
              end;
            GToken(roundbc);
            GToken(roundbc)
            end
          else
            begin
              { cannot be sure how target stores its character set,
                so ignore variable and use an integer variable to
                index the array Chars. }
            pos := - 1;
            for i := 1 to 62 do
              if Chars[i] = Val then
                pos := i;
            if pos = - 1 then
              GTrace('Z', ord(Val), 0); { catch any illegal characters }
            write(Prog, 'Chars[');
            GIntVar(pos, d);
            GToken(squarebc)
            end;
          end;
        end;
    end; { GCharVar }


  procedure GRealVar(Val: real;
                     d: Depth);
   { Generate a real value, taking a variable if possible. }

    var
      L: Level;
      OK, This: VarAccessPtr;
      ValVar: real;


    begin
      if d > 0 then
        d := d - 1;
      if CurrentLevel = 0 then
        L := CurrentLevel
      else
        L := RandI(0, CurrentLevel);
      This := ConstUsed[L];
      OK := nil;
      while This <> nil do
        begin
        if (GlobalTypes[This^.ComponentType]^.Kind = Reel) and
           (This^.VarStatus = vall) then
          OK := This;
        if RandI(0, 6) = 0 then
          This := nil
        else
          This := This^.NextVarAccess
        end;
      This := OK;
      if This = nil then
        GRealExpr(Val, d)
      else
        begin
        { Variable found. }
        GVarAccess(This^, d);
        ValVar := This^.ComponentValue;
        { Correct value to that required. }
        if ((ValVar > 0.0) and (Val < 0.0)) or ((ValVar < 0.0) and
           (Val > 0.0)) then
          begin { to avoid overflow}
          GToken(minus);
          GRealExpr(ValVar, d);
          GToken(plus);
          GRealExpr(Val, d)
          end
        else if Val <> ValVar then
          begin
          GToken(plus);
          GRealExpr(Val - ValVar, d)
          end;
        end;
    end; { GRealVar }


  procedure GBoolVar(Val: boolean;
                     d: Depth);
   { Generate code to produce Val via (in)equality with a
     constant. }

    var
      L: Level;
      OK, This: VarAccessPtr;
      control, invert: boolean;
      SetVar: BaseSet;
      ThisType: TypePtr;


    begin
      if d > 0 then
        d := d - 1;
      if CurrentLevel = 0 then
        L := CurrentLevel
      else
        L := RandI(0, CurrentLevel);
      This := ConstUsed[L];
      OK := nil;
      while This <> nil do
        begin
        if This^.VarStatus = vall then
          OK := This;
        if RandI(0, 6) = 0 then
          This := nil
        else
          This := This^.NextVarAccess
        end;
      This := OK;
      if This = nil then
        GBoolExpr(Val, d)
      else
        begin
        { Variable found. }
        invert := RandI(0, 1) = 0;
        GToken(roundbo);
        ThisType := GlobalTypes[This^.ComponentType];
        for control := false to true do
          begin
          if control = invert then
            GVarAccess(This^, d)
          else
            case ThisType^.Kind of
              Reel:
                GRealExpr(This^.ComponentValue, d);
              Ordinal:
                GOrdExpr(ThisType, This^.ComponentValue, d);
              SetOf:
                begin
                SetSet(This^.ComponentValue, SetVar, ThisType);
                GSetExpr(ThisType, SetVar, d)
                end;
              Arr, Rec:
              { Error! }
                GTrace('E', ord(Val), 0);
              Pointer:
                GToken(nilT);
              end; {case}
          if control = false then
            if Val then
              GToken(equals)
            else
              GToken(notequals)
          end; { for control }
        GToken(roundbc);
        end;
    end; { GBoolVar }


  procedure GSetVar(SetType: TypePtr;
                    Val: BaseSet;
                    d: Depth);
   { Generate code to produce Val via access to a constant (if possible). }

    var
      L: Level;
      OK, This: VarAccessPtr;
      ThisType: TypePtr;
      ValVar: BaseSet;


    begin
      if d > 0 then
        d := d - 1;
      if CurrentLevel = 0 then
        L := CurrentLevel
      else
        L := RandI(0, CurrentLevel);
      This := ConstUsed[L];
      OK := nil;
      while This <> nil do
        begin
	ThisType := GlobalTypes[This^.ComponentType];
        if (ThisType^.Kind = SetOf) and (This^.VarStatus = vall) then
          if (ThisType^.IsPacked = SetType^.IsPacked) and
	     (ThisType^.OrdinalKind = SetType^.OrdinalKind) and
	     (ThisType^.BaseType = SetType^.BaseType) then
            OK := This;
        if RandI(0, 6) = 0 then
          This := nil
        else
          This := This^.NextVarAccess
        end;
      This := OK;
      if This = nil then
        GSetExpr(SetType, Val, d)
      else
        begin
        {Variable found}
        SetSet(This^.ComponentValue, ValVar,
               GlobalTypes[This^.ComponentType]);
        if Val * ValVar = [] then
          begin
          GSetExpr(SetType, Val + ValVar, d);
          GToken(minus);
          GVarAccess(This^, d)
          end
        else if Val - ValVar = [] then
          begin
          GSetExpr(SetType, Val, d);
          GToken(times);
          GVarAccess(This^, d)
          end
        else
          begin
          GVarAccess(This^, d);
          GToken(times);
          GSetExpr(SetType, Val, d);
          GToken(plus);
          GSetExpr(SetType, Val - ValVar, d)
          end;
        end;
    end; { GSetVar }

{  Component  7:  Expressions.

     Expressions are generated by simple recursive descent procedures.
     The options are not weighted - just a uniform generator is used.
     One option is a recursive call at a lower-level to stop complex
     expressions from having uniform complexity. Expressions include
     the required functions ord, odd, sqr, trunc, round and abs.
     Expressions should contain all operations and there should be
     no correlation between their occurance. By these criteria, the
     following defects are known:
       1: No real divide (part of specification).
       2: No string operations.
       3: trunc and adding 0.5 occur together.
       4: (real) * and (real) + appear together.
       5: sqr and (real) + appear together.

}

   { For simplicity, expressions only are generated, not terms
     or factors. In consequence, redundant brackets are produced
     rather than relying upon operator priority. }

  procedure GEnumExpr(This: TypePtr; Val: positive; d: Depth);
    begin
    { work with base type }
    if This^.BaseType <> nil then
      This := This^.BaseType;
    if d <= 1 then
      GEnumVal(This, Val)
    else
      case RandI(0, 2) of
      0: GEnumVal(This, Val);
      1: if Val <> This^.Min then
	   begin
	   write(Prog, 'succ(');
	   GEnumExpr(This, Val-1, d-1);
	   GToken(roundbc)
	   end
         else
	   GEnumExpr(This, Val, d-1);
      2: if Val <> This^.Max then
	   begin
	   write(Prog, 'pred(');
	   GEnumExpr(This, Val+1, d-1);
	   GToken(roundbc)
	   end
         else
	   GEnumExpr(This, Val, d-1)
      end { case };
    end;

  procedure GOrdExpr {(This: TypePtr; Val: integer; d: Depth)} ;

    begin
    if This^.Kind <> Ordinal then
      if This^.BaseType^.Kind <> Ordinal then
        GTrace( 'z', ord(This^.Kind), 0);
      case This^.OrdinalKind of
        IntRange:
          GIntExpr(Val, d);
        Bool:
          if Val = 0 then
            GBoolExpr(false, d)
          else
            GBoolExpr(true, d);
        Character:
          GCharExpr(chr(Val), d);
        Enum:
          GEnumExpr(This, Val, d);
        end;
    end;


  procedure GCharExpr {(Val: char; d: Depth)} ;
   { Generate a character expression, which is very limited since no
     use is made of the character encoding to avoid host-target
     problems. }

    var
      temp: integer;
      i: 1..62;


    begin
      GTrace('J', d, 1);
      GTrace('V', ord(Val), 2);
      if d <= 0 then
        GChar(Val)
      else
        begin
        if RandI(0, 100) > DensityOfConstants then
          GCharVar(Val, d - 1)
        else
          begin
          case RandI(0, 4) of
            0:
            { succ(pred(Val)) }
              if (SameCharSet) and (ord(Val) = MinOrdChar) then
                GChar(Val)
              else if (not SameCharSet) and ((Val = 'a') or (Val = 'A') or
                      (Val = '0')) then
                GChar(Val)
              else
                begin
                write(Prog, 'succ(');
                GCharExpr(pred(Val), d - 1);
                GToken(roundbc)
                end;
            1:
            { pred(succ(Val)) }
              if (SameCharSet) and (ord(Val) = MaxOrdChar) then
                GChar(Val)
              else if (not SameCharSet) and ((Val = 'z') or (Val = 'Z') or
                      (Val = '9')) then
                GChar(Val)
              else
                begin
                write(Prog, 'pred(');
                GCharExpr(succ(Val), d - 1);
                GToken(roundbc)
                end;
            2:
              begin
              { Chars[ord(Val)] }
              temp := - 1;
              for i := 1 to 62 do
                if Chars[i] = Val then
                  temp := i;
              if (temp = - 1) then
                begin
                if SameCharSet then
                  GCharExpr(Val, d - 1)
                else
                  GTrace('Z', ord(Val), 0);
                end
              else
                begin
                write(Prog, 'Chars[');
                GIntExpr(temp, d - 2);
                GToken(squarebc)
                end;
              end;
            3:
              begin
              { chr(ord(character expression)) }
              write(Prog, 'chr(ord(');
              GCharExpr(Val, d - 2);
              GToken(roundbc);
              GToken(roundbc)
              end;
            4:
            { chr(integer expressions) }
              if not SameCharSet then
                GCharExpr(Val, d)
              else
                begin
                { chr(ord(Val)) }
                write(Prog, 'chr(');
                GIntExpr(ord(Val), d - 1);
                GToken(roundbc)
                end;
            end; {case}
          end;
        end
    end; { GCharExpr }


  procedure GIntExpr {(Val: integer; d: Depth)} ;
   { Generate an integer expression having the required value =(Val). }

    var
      done, found: boolean;
      temp, i, rnd: integer;


    begin
      GTrace('I', d, 1);
      GTrace('V', Val, 2);
      if abs(Val) > MaxTint then
        GTrace('G', Val, 0);
      if d <= 0 then
        begin
        if Val < 0 then
          GToken(roundbo);
        GInt(Val);
        if Val < 0 then
          GToken(roundbc)
        end
      else if (RandI(0, 1) = 0) and (abs(Val) <= 1) then
        begin
        GToken(roundbo);
        case Val of
          - 1:
            case RandI(0, 2) of
            { generate -1 }
              0:
                begin
                { temp div -temp }
                temp := randBias( - MaxTint, MaxTint);
                if temp = 0 then
                  temp := 1;
                GIntExpr(temp, d - 2);
                GToken(divT);
                GIntExpr( - temp, d - 2)
                end;
              1:
                begin
                { -1 }
                GToken(minus);
                GIntExpr(1, d - 1);
                end;
              2:
                begin
                { temp * -temp,  where temp = -1 or +1 }
                temp := RandI(0, 1);
                if temp = 0 then
                  temp := - 1;
                GIntExpr(temp, d - 2);
                GToken(times);
                GIntExpr( - temp, d - 2)
                end;
              end; {case}
          0:
            begin
            { generate 0 }
            temp := randBias( - MaxTint, MaxTint);
            case RandI(0, 2) of
              0:
                begin
                { temp * 0 }
                GIntExpr(temp, d - 2);
                GToken(times);
                GIntExpr(0, d - 2)
                end;
              1:
                begin
                { 0 div temp }
                if temp = 0 then
                  temp := 1;
                GIntExpr(0, d - 2);
                GToken(divT);
                GIntExpr(temp, d - 2)
                end;
              2:
                begin
                { ord(false) }
                write(Prog, 'ord(');
                GBoolExpr(false, d - 2);
                GToken(roundbc)
                end;
              end; {case}
            end;
          1:
            case RandI(0, 2) of
            { generate 1 }
              0:
                begin
                { temp div temp }
                temp := RandI(1, MaxTint);
                GIntExpr(temp, d - 2);
                GToken(divT);
                GIntExpr(temp, d - 2)
                end;
              1:
                begin
                { ord(true) }
                write(Prog, 'ord(');
                GBoolExpr(true, d - 2);
                GToken(roundbc)
                end;
              2:
                begin
                { -1 * -1 }
                GIntExpr( - 1, d - 2);
                GToken(times);
                GIntExpr( - 1, d - 2)
                end;
              end; {case}
          end; {case}
        GToken(roundbc)
        end
      else
        begin
        GToken(roundbo);
        repeat
          done := true;
          if RandI(1, 100) > DensityOfConstants then
            GIntVar(Val, d - 1)
          else
            begin
            case RandI(0, 11) of
              0:
                if Val < 0 then
                  begin
                  { (MaxTint + Val) - MaxTint }
                  GIntExpr(MaxTint + Val, d - 1);
                  GToken(minus);
                  GIntExpr(MaxTint, d - 2)
                  end
                else
                  begin
                  { - ((MaxTint - Val) - MaxTint) }
                  GToken(minus);
                  GToken(roundbo);
                  GIntExpr(MaxTint - Val, d - 2);
                  GToken(minus);
                  GIntExpr(MaxTint, d - 1);
                  GToken(roundbc)
                  end;
              1:
                if not UseReals then
                  GIntExpr(Val, d)
                else
                  begin
                  if abs(Val) <= MaxRealBits then
                    begin
                    { trunc(Val+0.5) or -trunc(-Val+0.5) }
                    if Val < 0 then
                      GToken(minus);
                    GToken(truncId);
                    GToken(roundbo);
                    if Val < 0 then
                      GToken(minus);
                    GRealExpr(Val, d - 1);
                    write(Prog, '+ 0.5)')
                    end
                  else
                    done := false
                  end;
              2:
                begin
                { if Val < 0 then
                     (Val div temp) * temp [ - (abs(Val) mod temp)]
                  else
                     (Val div temp) * temp [ + (abs(Val) mod temp)] }
                temp := randBias(1, MaxTint);
                GIntExpr(Val div temp, d - 1);
                GToken(times);
                GIntExpr(temp, d - 2);
                if abs(Val) mod temp = 0 then
                { to make code more general, occasionally perform +0 }
                  begin
                  if RandI(0, 2) = 0 then
                    begin
                    GToken(plus);
                    GIntExpr(0, d - 1)
                    end
                  end
                else
                  begin
                  if Val < 0 then
                    GToken(minus)
                  else
                    GToken(plus);
                  GIntExpr(abs(Val) mod temp, d - 1)
                  end
                end;
              3:
                begin
                {  sqr(temp) + Val - sqr(temp) or
                  -sqr(temp) + Val + sqr(temp) }
                temp := Isqrt(abs(Val));
                if Val < 0 then
                  GToken(minus);
                GToken(sqrId);
                GToken(roundbo);
                GIntExpr(temp, d - 2);
                GToken(roundbc);
                if Val < 0 then
                  begin
                  rnd := RandI(0, 1);
                  { cannot use RandI in IF statements because of problems
                    with "short-circuit evaluation" }
                  if (Val + sqr(temp) = 0) and (rnd = 0) then
                  else
                    begin
                    GToken(plus);
                    GIntExpr(Val + sqr(temp), d - 1)
                    end
                  end
                else
                  begin
                  rnd := RandI(0, 1);
                  if (Val - sqr(temp) = 0) and (rnd = 0) then
                  else
                    begin
                    GToken(plus);
                    GIntExpr(Val - sqr(temp), d - 1)
                    end
                  end
                end;
              4:
                if Val <> - MaxTint then
                  begin
                  { succ(Val-1) }
                  write(Prog, 'succ(');
                  GIntExpr(Val - 1, d - 1);
                  GToken(roundbc)
                  end
                else
                  done := false;
              5:
                if Val <> MaxTint then
                  begin
                  { pred(Val+1) }
                  write(Prog, 'pred(');
                  GIntExpr(Val + 1, d - 1);
                  GToken(roundbc)
                  end
                else
                  done := false;
              6:
                begin
                { (Val div temp)*temp }
                if Val = 0 then
                  temp := 1
                else
                  begin
                  temp := Isqrt(abs(Val));
                  while Val mod temp <> 0 do
                    begin
                    if temp > 50 then
                      temp := temp div 2
                    else
                      temp := temp - 1
                    end;
                  end;
                GIntExpr(Val div temp, d - 2);
                GToken(times);
                GIntExpr(temp, d - 1)
                end;
              7:
                GIntExpr(Val, d - 1);
              8:
                begin
                { (Val * temp) div temp }
                if Val = 0 then
                  temp := 1
                else
                  temp := MaxTint div Val;
                if temp = 0 then
                  GTrace('D', Val, 0); {added to trap incorrect code }
                GIntExpr(Val * temp, d - 1);
                GToken(divT);
                GIntExpr(temp, d - 2)
                end;
              9:
                begin
                GToken(IdIntId);
                GToken(roundbo);
                GIntExpr(Val, d - 1);
                GToken(roundbc)
                end;
              10:
                begin
                { [ - ] abs(Val) mod temp  where temp > abs(Val) }
                if Val < 0 then
                  begin
                  GToken(minus);
                  Val := abs(Val)
                  end;
                GToken(roundbo);
                if Val = MaxTint then
                  GIntExpr(Val, d - 1)
                else
                  begin
                  temp := RandI(Val + 1, MaxTint);
                  GIntExpr(Val, d - 1);
                  GToken(modT);
                  GIntExpr(temp, d - 2);
                  end;
                GToken(roundbc)
                end;
              11:
                begin
                { ord(chr(Val)) }
                found := false;
                if SameCharSet then
                  begin
                  { Target's behavour is known, so use all available chars }
                  if (Val >= MinOrdChar) and (Val <= MaxOrdChar) then
                    found := true;
                  end
                else
                  begin
                  { Target's behavour cannot be predicted, so use Chars }
                  for i := 1 to 62 do
                    if Val = ord(Chars[i]) then
                      found := true;
                  end;
                if not found then
                  GIntExpr(Val, d)
                else
                  begin
                  write(Prog, 'ord(');
                  GCharExpr(chr(Val), d - 1);
                  GToken(roundbc)
                  end;
                end;
              end; { case }
            end { if }
        until done;
        GToken(roundbc);
        end;
    end; { GIntExpr }


  procedure GBoolExpr {(Val: boolean; d: Depth)} ;
   { Generate a boolean expression having the required value (=Val). }

    var
      temp: integer;
      other: boolean;
      S1, S2: BaseSet;
      SType: TypePtr;
      relop: Token;
      char1, char2: char;


    procedure GRelop;


      begin
        case seed1 mod 3 of
          0:
            if Val then
              GToken(equals)
            else
              GToken(notequals);
          1:
            if Val then
              GToken(lessequals)
            else
              GToken(greater);
          2:
            if Val then
              GToken(greaterequals)
            else
              GToken(less);
          end; {case}
      end;


    begin
      GTrace('B', d, 1);
      GTrace('a', ord(Val), 2);
      if d <= 0 then
        begin
        if Val then
          GToken(trueId)
        else if seed1 mod 3 = 0 then
          GToken(failId)
        else
          GToken(falseId)
        end
      else
        begin
        GToken(roundbo);
        if RandI(1, 100) > DensityOfConstants then
          GBoolVar(Val, d - 1)
        else
          begin
          case RandI(0, 12) of
            0:
              begin
              { temp relop temp }
              temp := randBias( - MaxTintBy2, MaxTintBy2);
              GIntExpr(temp, d - 1);
              GRelop;
              GIntExpr(temp, d - 2)
              end;
            1:
              begin
              { not Val }
              GToken(notT);
              GBoolExpr(not Val, d - 1)
              end;
            2:
              begin
              { Val and true }
              GBoolExpr(Val, d - 2);
              GToken(andT);
              GBoolExpr(true, d - 1)
              end;
            3:
              begin
              { false or Val }
              GBoolExpr(false, d - 1);
              GToken(orT);
              GBoolExpr(Val, d - 1)
              end;
            4:
              begin
              { other relop Val }
              other := odd(seed1);
              GBoolExpr(other, d - 2);
              case seed2 mod 3 of
                0:
                  if (other = Val) = Val then
                    GToken(equals)
                  else
                    GToken(notequals);
                1:
                  if (other <= Val) = Val then
                    GToken(lessequals)
                  else
                    GToken(greater);
                2:
                  if (other >= Val) = Val then
                    GToken(greaterequals)
                  else
                    GToken(less);
                end; {case}
              GBoolExpr(Val, d - 1)
              end;
            5:
              begin
              { odd(temp [+1] ) }
              temp := randBias( - MaxTintBy2, MaxTintBy2);
              write(Prog, 'odd(');
              if odd(temp) = Val then
                GIntExpr(temp, d - 1)
              else
                GIntExpr(temp + 1, d - 1);
              GToken(roundbc)
              end;
            6:
              if not UseReals then
                GBoolExpr(Val, d)
              else
                begin
                { int relop Reel }
                temp := randBias( - MaxRealBits, MaxRealBits);
                GIntExpr(temp, d - 1);
                GRelop;
                GRealExpr(temp, d - 2)
                end;
            7:
              if not UseReals then
                GBoolExpr(Val, d)
              else
                begin
                { Reel relop int }
                temp := randBias( - MaxRealBits, MaxRealBits);
                GRealExpr(temp, d - 1);
                GRelop;
                GIntExpr(temp, d - 1)
                end;
            8:
              if not UseReals then
                GBoolExpr(Val, d)
              else
                begin
                { Reel relop Reel }
                temp := randBias( - MaxRealBits, MaxRealBits);
                GRealExpr(temp, d - 2);
                GRelop;
                GRealExpr(temp, d - 1)
                end;
            9:
              begin
              { set1 relop set2 }
              new(SType);
              RandOrdSType(SType, false, true, false);
              RandSet(SType, S1);
              RandSet(SType, S2);
              case seed1 mod 3 of
                0:
                  begin
                  S2 := S1;
                  if Val then
                    relop := equals
                  else
                    relop := notequals
                  end;
                1:
                  if (S1 <= S2) = Val then
                    relop := lessequals
                  else if (S1 >= S2) = Val then
                    relop := greaterequals
                  else if (S1 = S2) = Val then
                    relop := equals
                  else
                    relop := notequals;
                2:
                  begin
                  S1 := S1 + S2;
                  if (S1 >= S2) = Val then
                    relop := greaterequals
                  else if (S1 = S2) = Val then
                    relop := equals
                  else
                    relop := notequals
                  end;
                end {case} ;
              GSetExpr(SType, S1, d - 2);
              GToken(relop);
              GSetExpr(SType, S2, d - 1);
              dispose(SType)
              end;
            10:
              GBoolExpr(Val, d - 1);
            11:
              begin
              { Ordinal in set }
              new(SType);
              RandOrdSType(SType, false, true, false);
              RandSet(SType, S1);
              temp := RandI(SType^.Min, SType^.Max);
              if Val <> (temp in S1) then
                if Val then
                  S1 := S1 + [temp]
                else
                  S1 := S1 - [temp];
              GOrdExpr(SType, temp, d - 2);
              GToken(inT);
              GSetExpr(SType, S1, d - 1);
              dispose(SType)
              end;
            12:
            { char relop char }
              if not SameCharSet then
                begin
                temp := RandI(1, 62);
                GCharExpr(Chars[temp], d - 1);
                GRelop;
                GCharExpr(Chars[temp], d - 2)
                end
              else
                begin
                char1 := chr(RandI(MinOrdChar, MaxOrdChar));
                char2 := chr(RandI(MinOrdChar, MaxOrdChar));
                GCharExpr(char1, d - 2);
                if Val then
                  begin
                  if char1 < char2 then
                    GToken(less)
                  else if char1 = char2 then
                    GToken(equals)
                  else
                    GToken(greater);
                  end
                else
                  begin
                  if char1 < char2 then
                    GToken(greater)
                  else if char1 = char2 then
                    GToken(notequals)
                  else
                    GToken(less);
                  end;
                GCharExpr(char2, d - 1)
                end;
            end; { case }
          end; { if }
        GToken(roundbc)
        end;
    end; { GBoolExpr }


  procedure GRealExpr {(Val: real; d: Depth)} ;
   { Generate a real expression having the required value =(Val). }

    var
      Range, Op1, Opc, Opd: real;


    begin
      GTrace('R', d, 1);
      GTrace('T', trunc(Val), 2);
      if abs(Val) > MaxRealBits then
        GTrace('H', trunc(Val), 0);
      if d <= 0 then
        begin
        if Val < 0.0 then
          GToken(roundbo);
        GReal(Val);
        if Val < 0.0 then
          GToken(roundbc)
        end
      else
        begin
        Range := MaxRealBits div 2;
        Op1 := randBias( - trunc(Range), trunc(Range));
        GToken(roundbo);
        if RandI(1, 100) > DensityOfConstants then
          GRealVar(Val, d - 1)
        else
          begin
          case RandI(0, 5) of
            0:
              begin
              { Op1 + int }
              if Val * Op1 < 0.0 then
                Op1 := - Op1;
              GRealExpr(Op1, d - 1);
              GToken(plus);
              GIntExpr(round(Val - Op1), d - 2)
              end;
            1:
              begin
              { Op1 - Reel }
              if Val * Op1 < 0.0 then
                Op1 := - Op1;
              GRealExpr(Op1, d - 2);
              GToken(minus);
              GRealExpr(Op1 - Val, d - 1)
              end;
            2:
              begin
              { Opc*Opd + Reel }
              Opc := Isqrt(trunc(abs(Op1)));
              if Opc = 0.0 then
                Opc := 1.0;
              Opd := trunc(Val / Opc);
              GRealExpr(Opc, d - 2);
              GToken(times);
              GRealExpr(Opd, d - 1);
              if Val - Opc * Opd <> 0.0 then
                begin
                GToken(plus);
                GRealExpr(Val - Opc * Opd, d - 1)
                end;
              end;
            3:
              begin
              { [+|-] sqr(Opc) + Reel }
              Opc := Isqrt(trunc(abs(Op1)));
              if Val < 0.0 then
                GToken(minus);
              GToken(sqrId);
              GToken(roundbo);
              GRealExpr(Opc, d - 2);
              GToken(roundbc);
              GToken(plus);
              if Val < 0.0 then
                GRealExpr(Val + sqr(Opc), d - 1)
              else
                GRealExpr(Val - sqr(Opc), d - 1)
              end;
            4:
              GRealExpr(Val, d - 1);
            5:
              begin
              GToken(IdRealId);
              GToken(roundbo);
              GRealExpr(Val, d - 1);
              GToken(roundbc)
              end;
            end; {case}
          end; { if }
        GToken(roundbc)
        end;
    end; { GRealExpr }


  procedure GSetExpr {(SetType: TypePtr; Val: BaseSet; d: Depth)} ;
   { Generate a set expression having the required value =(Val). }

    var
      t, p, q: integer;
      i: SetRange;
      more: boolean;


    procedure GSetLit(SetType: TypePtr;
                      Val: BaseSet;
                      d: Depth);

      var
        GRange, inrange: boolean;
        i, start: SetRange;


      begin
        GToken(squarebo);
        GRange := odd(seed1);
        more := false;
        inrange := false;
        for i := SetType^.Min to SetType^.Max do
          if (i in Val) and not GRange then
            begin
            if more then
              GToken(comma);
            GOrdExpr(SetType, i, d - 1);
            more := true;
            GRange := true
            end
          else if i in Val then
            begin
            if not inrange then
              start := i;
            inrange := true
            end
          else if inrange then
            begin
            if more then
              GToken(comma);
            GOrdExpr(SetType, start, d - 1);
            GToken(range);
            GOrdExpr(SetType, i - 1, d - 1);
            inrange := false;
            GRange := false;
            more := true
            end;
        if inrange then
          begin
          if more then
            GToken(comma);
          GOrdExpr(SetType, start, d - 1);
          GToken(range);
          GOrdExpr(SetType, SetType^.Max, d - 1)
          end;
        GToken(squarebc)
      end; { GSetLit }


    begin
      GTrace('S', d, 1);
      if d <= 0 then
        GSetLit(SetType, Val, 1)
      else
        begin
        GToken(roundbo);
        p := - 1;
        q := - 1;
        t := RandI(SetType^.Min, SetType^.Max);
        for i := t to SetType^.Max do
          if i in Val then
            p := i
          else
            q := i;
        GTrace('s', p, 2);
        GTrace('s', q, 2);
        if RandI(1, 100) > DensityOfConstants then
          GSetVar(SetType, Val, d - 1)
        else
          begin
          case RandI(0, 4) of
            0:
              if p = - 1 then
                begin
                { Val + Val }
                GSetExpr(SetType, Val, d - 1);
                GToken(plus);
                GSetExpr(SetType, Val, d - 2)
                end
              else
                begin
                { (Val-[p]) + [p] }
                GSetExpr(SetType, Val - [p], d - 1);
                GToken(plus);
                GSetExpr(SetType, [p], d - 2)
                end;
            1:
              if q = - 1 then
                begin
                { Val - [] }
                GSetExpr(SetType, Val, d - 1);
                GToken(minus);
                GSetExpr(SetType, [], d - 2)
                end
              else
                begin
                { (Val+[q]) - [q] }
                GSetExpr(SetType, Val + [q], d - 1);
                GToken(minus);
                GSetExpr(SetType, [q], d - 2)
                end;
            2:
              begin
              { Val * [min..max] }
              GSetExpr(SetType, Val, d - 2);
              GToken(times);
              GSetExpr(SetType, [SetType^.Min..SetType^.Max], d - 1)
              end;
            3:
              GSetLit(SetType, Val, d);
            4:
              GSetExpr(SetType, Val, d - 1);
            end; {case}
          end; { if }
        GToken(roundbc)
        end;
    end; { GSetExpr }


  procedure SetSet {(IntValue: integer; var Result: BaseSet; ThisPtr:
                    TypePtr)} ;
   { Calculates a set value Result from an integer IntValue.
     Used for noting values of preserved set values. }


    begin
      if IntValue >= 0 then
        Result := [IntValue]
      else
        Result := [ThisPtr^.Min..ThisPtr^.Max] - [IntValue]
    end; { SetSet }

{  Component  8:  Statements.
}

{ The next three procedures handle the division of statements into
  code blocks so that procedures/functions generated do not get too
  big. Uses the variables: CurrentBlock, BlockDepth, BlockLimit
  and TotalBlocks.}


  procedure StartFirstCodeBlock(ProcDepth: Depth;
                                TokenLimit: positive);
   { This procedure calculates how the code can be split into a
     number of blocks to avoid any one block being much bigger than
     about MaxTokensPerBlock. }

    var
      d: Depth;


    begin
      TotalBlocks := trunc(TokenLimit / MaxTokensPerBlock);
      if ProcDepth > TotalBlocks then
        TotalBlocks := ProcDepth;
      if TotalBlocks > 1 then
        begin
        BlockDepth := ProcDepth;
        BlockLimit := TokensGenerated + MaxTokensPerBlock;
        CurrentBlock := 1;
        for d := BlockDepth downto 1 do
          begin
          GToken(procedureT);
          GIdent('P', d);
          GToken(semicolon);
          NewLine
          end;
        GToken(beginT)
        end
      else
        GToken(beginT)
    end; { StartFirstCodeBlock }


  procedure StatementEnd;
   { This procedure is called at the end of every top level statement
     to determine if this statement should be the last in the current
     block, in which case a new block is started. }


    begin
      if (TotalBlocks > 1) then
        if (CurrentBlock <= TotalBlocks) and
           (BlockLimit <= TokensGenerated) then
          begin
          CurrentBlock := CurrentBlock + 1;
          BlockLimit := TokensGenerated + MaxTokensPerBlock;
          GToken(endT);
          GToken(semicolon);
          if (CurrentBlock > BlockDepth) and
             (CurrentBlock <> TotalBlocks + 1) then
            begin
            GToken(procedureT);
            GIdent('P', CurrentBlock);
            GToken(semicolon);
            NewLine
            end;
          GToken(beginT);
          GIdent('P', CurrentBlock - 1);
          GToken(semicolon)
          end;
    end; { StatementEnd }


  procedure StatementCompletion;
   { This procedure must be called before the start of the main
     program code to ensure that the splitting of code into
     blocks has been completed. }

    var
      Correction: positive;


    begin
      Correction := 0;
      if TotalBlocks > 1 then
        while CurrentBlock <= TotalBlocks do
          begin
          Correction := BlockLimit - TokensGenerated;
          TokensGenerated := BlockLimit;
          StatementEnd
          end;
      TokensGenerated := TokensGenerated - Correction
    end; { StatementCompletion }


  procedure GInitConstants(L: Level;
                           TokenLimit: positive);
   {produces executable code to initialise constants }

    var
      Current: VarPtr;
      This: VarAccess;
      NumberLinked: integer;


    procedure LinkConstUsed;

      var
        ThisConst: VarAccessPtr;
        p, copy: ListPtr;


      begin
        NumberLinked := NumberLinked + 1;
        {Link onto ConstUsed }
        new(ThisConst);
        ThisConst^ := This;
        { Copy Select List }
        if This.Select <> nil then
          begin
          new(copy);
          ThisConst^.Select := copy;
          p := This.Select;
          copy^.This := p^.This;
          while p^.Next <> nil do
            begin
            new(copy^.Next);
            copy := copy^.Next;
            p := p^.Next;
            copy^.This := p^.This
            end;
          copy^.Next := nil
          end;
        ThisConst^.NextVarAccess := ConstUsed[L];
        ConstUsed[L] := ThisConst
      end; { LinkConstUsed }


    procedure InitOrdConstant(ThisType: TypePtr);
    { assigns a value to a variable of an Ordinal type.
      N.B. 'This' is global to this procedure           }

      var
        i: integer;
        Val: char;

      begin
        case ThisType^.OrdinalKind of
          IntRange:
            This.ComponentValue := randBias(ThisType^.Min, ThisType^.Max);
          Bool, Enum:
            This.ComponentValue := RandI(ThisType^.Min, ThisType^.Max);
          Character:
            if SameCharSet then
              begin
              { assign a character value, with in the specified range }
              Val := chr(ThisType^.Min);
              while Val <= chr(ThisType^.Max) do
                begin
                This.ComponentValue := ord(Val);
                if RandI(0, 3) = 0 then
                  Val := succ(chr(ThisType^.Max))
                else
                  Val := succ(Val);
                end;
              end
            else
              begin
              { assign a character value from the array Chars }
	      i := 1;
	      repeat
		Val := Chars[RandI(1, 62)];
		i := i + 1;
              until ((ord(Val) >= ThisType^.Min) and (ord(Val) <= ThisType^.Max))
		 or (i = 20);
              for i := 1 to 62 do
		if ord(Chars[i]) = ThisType^.Min then
		  Val := Chars[i];
              if (ord(Val) < ThisType^.Min) or (ord(Val) > ThisType^.Max) then
		GTrace('K', ord(Val), 0); { logical error as attempt made to
		generate non-existant character }
              This.ComponentValue := ord(Val) 
              end;
          end;
      end;


    procedure InitConstant(ThisType: TypePtr;
                           var SList: ListPtr);
    { generates code to initialise a variable designated as holding
      a constant value. Links constants onto ConstUsed.              }

      var
        IndList, start, last, p: ListPtr;
        power, pattern, i, f1, f2, count: integer;
        IType: TypePtr;
        SetVal: BaseSet;


      begin
        GTrace('C', ord(ThisType^.Kind), 2);
        case ThisType^.Kind of
          Reel, Ordinal:
            begin
            This.ComponentType := IndexOf(ThisType);
            This.VarStatus := vall;
            if ThisType^.Kind = Reel then
              This.ComponentValue := randBias( - MaxRealBits, MaxRealBits)
            else
              InitOrdConstant(ThisType);
            SList := nil;
            GVarAccess(This, RandI(1, NestedDepth));
            GToken(becomes);
            if ThisType^.Kind = Reel then
	      if RandI(0, 1) = 1 then
		GRealExpr(This.ComponentValue, NestedDepth)
              else
                GIntExpr(This.ComponentValue, NestedDepth)
            else
              GOrdExpr(ThisType, This.ComponentValue, NestedDepth);
            GToken(semicolon);
            SList := nil;
            LinkConstUsed
            end;
          Rec:
            begin
            count := 0;
            p := ThisType^.RecList;
            while p <> nil do
              begin
              p := p^.Next;
              count := count + 1
              end;
            f1 := RandI(1, count);
            f2 := RandI(1, count);
            new(SList);
            GTrace('F', f1, 2);
            SList^.This := f1;
            p := ThisType^.RecList;
            for count := 1 to f1 - 1 do
              p := p^.Next;
            InitConstant(GlobalTypes[p^.This], SList^.Next);
            if f1 <> f2 then
              begin
              SList^.This := f2;
              GTrace('F', f2, 2);
              p := ThisType^.RecList;
              for count := 1 to f2 - 1 do
                p := p^.Next;
              InitConstant(GlobalTypes[p^.This], SList^.Next)
              end;
            end;
          Arr:
            begin
            power := 1;
            GTrace('[', ThisType^.Dim, 2);
            IndList := ThisType^.ArrIndList;
            for count := 1 to ThisType^.Dim do
              begin
              if GlobalTypes[IndList^.This]^.Min <>
                 GlobalTypes[IndList^.This]^.Max then
                power := power * 2;
              if count = 1 then
                begin
                new(SList);
                start := SList;
                p := SList;
                p^.Next := nil
                end
              else
                begin
                new(p^.Next);
                p := p^.Next;
                p^.Next := nil
                end;
              IndList := IndList^.Next;
              end;
            for i := 0 to power - 1 do
              begin
              pattern := i;
              IndList := ThisType^.ArrIndList;
              p := start;
              for count := 1 to ThisType^.Dim do
                begin
                IType := GlobalTypes[IndList^.This];
                if odd(pattern) then
                  begin
                  p^.This := IType^.Min;
                  end
                else
                  p^.This := IType^.Max;
                last := p;
                p := p^.Next;
                if GlobalTypes[IndList^.This]^.Min <>
                   GlobalTypes[IndList^.This]^.Max then
                  pattern := pattern div 2;
                IndList := IndList^.Next;
                end; {count}
              InitConstant(ThisType^.EType, last^.Next);
              end; {i}
            end;
          SetOf:
            begin
            This.ComponentType := IndexOf(ThisType);
            This.VarStatus := vall;
            InitOrdConstant(ThisType);
            SList := nil;
            GVarAccess(This, RandI(1, NestedDepth));
            GToken(becomes);
            SetSet(This.ComponentValue, SetVal, ThisType);
            GSetExpr(ThisType, SetVal, NestedDepth);
            GToken(semicolon);
            LinkConstUsed
            end;
          Pointer:
            if NumberLinked > 6 then
              begin
              { set to nil to stop infinite recursion }
              SList := nil;
              GVarAccess(This, RandI(1, NestedDepth));
              GToken(becomes);
              GToken(nilT);
              GToken(semicolon);
              This.ComponentType := IndexOf(ThisType);
              This.VarStatus := vall;
              LinkConstUsed
              end
            else
              begin
              { generate new and call recursively }
              NumberLinked := NumberLinked + 1;
              write(Prog, 'new(');
              SList := nil;
              GVarAccess(This, RandI(1, NestedDepth));
              GToken(roundbc);
              GToken(semicolon);
              new(SList);
              SList^.This := 0;
              InitConstant(ThisType^.PointsTo, SList^.Next)
              end;
          end; { case}
      end; { InitConstant }


    begin
      Current := VarsUsed[L];
      ConstUsed[L] := nil;
      while (Current <> nil) and (TokensGenerated < TokenLimit) do
        begin
        if Current^.VarNature = constant then
          begin
          NumberLinked := 0;
          { Construct This to hold details of constant-variable }
          This.VarIs := Current^;
          This.NextVarAccess := nil;
          InitConstant(GlobalTypes[This.VarIs.VarType], This.Select);
          StatementEnd;
          end;
        Current := Current^.NextVar
        end;
    end; { GInitConstants }


  procedure GStatements(L: Level;
                        TokenLimit: positive);
   { Generate statements in code blocks up to the required
     TokenLimit. }


    begin
      StartFirstCodeBlock(NestedDepth, TokenLimit);
      if L = 0 then
        begin
        GToken(failId);
        GToken(becomes);
        GToken(falseId);
        GToken(semicolon);
        NewLine;
        write(Prog, 'Chars:=''', Chars, ''';');
        NewLine;
        if CheckOpen <> 1 then
          write(Prog, 'NT := 0;');
        if CheckOpen = 4 then
          write(Prog, 'ptr := 0;');
        end;
      GInitConstants(L, TokenLimit div 2);
      while TokensGenerated < TokenLimit do
        begin
        CheckStart;
        GBoolExpr(false, NestedDepth);
        CheckFinish;
        GToken(semicolon);
        StatementEnd;
        NewLine
        end;
    end; { GStatements }


  procedure CheckVariables{ (L: Level) };

    var
      This: VarAccessPtr;
      SetVal: BaseSet;


    begin
      This := ConstUsed[L];
      while This <> nil do
        begin
        if This^.VarStatus = vall then
          begin
          GToken(ifT);
          GVarAccess(This^, 0);
          GToken(notequals);
          case GlobalTypes[This^.ComponentType]^.Kind of
            Reel:
              GRealExpr(This^.ComponentValue, 0);
            Ordinal:
              GOrdExpr(GlobalTypes[This^.ComponentType], This^.ComponentValue,
                       0);
            SetOf:
              begin
              SetSet(This^.ComponentValue, SetVal,
                     GlobalTypes[This^.ComponentType]);
              GSetExpr(GlobalTypes[This^.ComponentType], SetVal, 0)
              end;
            Pointer:
              GToken(nilT);
            Rec, Arr:
	      GTrace('+', 1, 0); { do nothing }
            end;
          GToken(thenT);
          GToken(beginT);
          NewLine;
          write(Prog, 'writeln(''Verification test failed on line ');
          write(Prog, LineNumber: 1, ''');');
          NewLine;
          GToken(failId);
          GToken(becomes);
          GToken(trueId);
          GToken(semicolon);
          GToken(endT);
          GToken(semicolon);
          end;
        This := This^.NextVarAccess
        end;
    end; { CheckVariables }

{  Component  9:  Procedures/Functions.
}


  procedure GProcsFuns(L: Level;
                       TokenLimit: positive);
   { Dummy: yet to be written. }


    begin
    end;


  begin
    ReadData;
    Prologue;
    GTypes;
    GVars(0);
    Monitoring;
    GProcsFuns(0, TokensRequired div 2);
    GStatements(0, TokensRequired);
    StatementCompletion;
    CheckVariables(0);
  13:
    Epilogue
  end.
