
The Pascal Validation Suite, version 5.7
----------------------------------------

NOTICE
------
Copyright in the Pascal Validation Suite is the property of the British 
Standards Institution (BSI).  To encourage wider recognition of and adherence 
to the Pascal standard, ISO 7185, BSI have agreed to make the Suite availble 
"as is" in the present form on the following three terms:
  * that BSI's copyright is acknowledged;
  * that no representation is made on the basis of use of the Suite which 
    might suggest that a third-party validation had been carried out;
  * that any other representation of the results of running the Suite must 
    describe performance on the whole suite and not simply on selected tests. 


-------------------------------------------------------------------------------

The Pascal Validation Suite is primarily designed to check that an implementation 
conforms to the Pascal standard, ISO 7185:1990.  It is made up of a large number 
of independent test programs, and a comment in each test relates it to a section 
in the standard.  However, it is by no means always necessary to possess a copy 
of the standard to understand the purpose of a test, and the suite can also be 
regarded as a valuable source of independent test material. 

The tests are subdivided into the following categories. 

    Conformance (CONFORM).  These are correct programs that should compile 
	and execute.  Except for CONF024, they all write "PASS", together
	with an identification of the test, to standard output if they run
	to completion; CONF024 is the minimal program, which produces no output.

    Deviance (DEVIANCE).  These tests all demonstrate some kind of incorrect 
	usage; technically, they "violate" a requirement of the standard.
	They should either be rejected by the compiler or signal an error
	during execution.  If they run to completion, they write "FAIL" to
	standard output.

    Error (ERROR).  The standard distinguishes between violations (which 
	must be detected and reported) and "errors", which an implementation
	is permitted not to detect.  This category is made up of pairs of
	programs, a pretest which is a correct program and a similar test
	which contains the error.  The test will write "ERROR" with an
	identification of the condition being tested, followed by
	"ERROR NOT DETECTED" if it runs to completion.  The standard has
	an appendix listing all possible errors, and the message relates to
	the appendix.

    Implementation-defined (IMPDEF).  These tests check aspects which the 
	standard requires to be defined for an implementation (for example
	the value of maxint, and the default widths for textfile output).
	They should all compile and execute, and will display the result
	with the comment "IMPLEMENTATION DEFINED".

    Implementation-dependent (IMPDEP).  These are features which may vary 
	between implementations (for example, the order in which the index
	expressions are evaluated when accessing a multi-dimensional array).
	The tests display the information they obtain, though they may not
	all run in all implementations.

    Implementation-defined-behaviour (IMPDEFB).  This is a rather miscellaneous 
	collection that checks aspects such as the number of characters taken
	into account when comparing identifiers, or whether there are limits on
	the number of real constants, or the number of files that a program can
	have open simultaneously.  All the programs that run correctly display
	the information they obtain, but some may fail in some environments.

    Level 1 (LEVEL1).  There is an optional part of the Pascal standard which 
	defines "conformant array parameters".  The tests in this category are
	subdivided into conformance, deviance, error and so on, and check those
	aspects of the option.  An implementation that does not include the
	conformant arrays option should reject all these programs.

    Extension (EXTEND).  A Pascal implementation that conforms to the standard 
	should have a means of disabling any local extensions, so that programs
	can be checked for portability.  These tests check for some of the
	more commonly encountered extensions.


-------------------------------------------------------------------------------

This disk contains the Pascal Validation Suite in the form of a number of 
subdirectories, one for each category (conformance, deviance and so on).  
To ensure that the suite can be used in a variety of environments, each test 
is in the form of a text file, with no packing or amalgamation of files.  
Typically, to install the suite, simply create a directory (called say PVS) 
and copy the contents of the disks into it, preserving the directory structure. 
In a DOS environment, for example, you can copy a disk with the command
	XCOPY A:\*.* \PVS /S
assuming that drive A is your floppy drive.

