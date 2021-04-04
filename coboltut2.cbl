>>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. coboltut.
AUTHOR. Hennermann Marco.
DATE-WRITTEN. July 29th 2020
ENVIRONMENT DIVISION.

DATA DIVISION.
FILE SECTION.
WORKING-STORAGE SECTION.
01 SampleData PIC X(10) VALUE "Stuff".
01 JustLetters PIC AAA VALUE "ABC".
01 JustNums PIC 9(4) VALUE 1234.
01 SignedInt PIC S9(4) VALUE -1234.
01 PayCheck PIC 9(4)V99 VALUE ZEROS.

01 Customer.
       02 Ident    PIC 9(3).
       02 CustName PIC X(20).
       02 DateOfBirth.
           03 MOB PIC 99.
           03 DOB PIC 99.
           03 YOB PIC 9(4).
01 Num1 PIC 9 VALUE 5.
01 Num2 PIC 9 VALUE 4.
01 Num3 PIC 9 VALUE 3.
01 Ans PIC S99V99 VALUE 0.
01 Rem PIC 9V99.

PROCEDURE DIVISION.
MOVE "More stuff" TO SampleData
MOVE "123" TO SampleData
MOVE 123 TO SampleData
DISPLAY SampleData
DISPLAY PayCheck
MOVE "123Bob Smith           12211974" TO Customer
DISPLAY CustName
DISPLAY MOB "/" DOB "/" YOB
MOVE ZERO TO SampleData
DISPLAY SampleData
MOVE SPACE TO SampleData
DISPLAY SampleData
MOVE HIGH-VALUE TO SampleData
DISPLAY SampleData
MOVE LOW-VALUE TO SampleData
DISPLAY SampleData

ADD Num1, Num3 TO Num2 GIVING Ans 
*> SUBTRACT FROM, MULTIPLY BY, DIVIDE INTO REMAINDER
DISPLAY Ans

COMPUTE Ans ROUNDED = Num1 + Num2 + Num3
COMPUTE Ans = Num1 ** Num2 *>Power of Num2

STOP RUN.

*> cobc -x coboltut.cob         to load the program
*> ./coboltut                  to run the program