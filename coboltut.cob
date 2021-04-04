>>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. coboltut.
AUTHOR. Hennermann Marco.
DATE-WRITTEN. July 29th 2020
ENVIRONMENT DIVISION.

DATA DIVISION.
FILE SECTION.
WORKING-STORAGE SECTION.
01 UserName PIC X(30) VALUE "You".
01 Num1    PIC 9 VALUE ZEROS.
01 Num2    PIC 9 VALUE ZEROS.
01 Total   PIC 99 VALUE 0.
01 SSNum.
       02 SSArea   PIC 999.
       02 SSGroup  PIC 99.
       02 SSSerial PIC 9999.
01 PIValue CONSTANT AS 3.14.
*> ZERO, ZEROES
*> SPACE SPACES
*> HIGH-VALUES
*> LOW-VALUES

PROCEDURE DIVISION.
DISPLAY "What is your name " WITH NO ADVANCING
ACCEPT UserName
DISPLAY "Hello " UserName

MOVE ZERO TO UserNameDISPLAY UserNameDISPLAY "Enter 2 values to sum"
    ACCEPT Num1
    ACCEPT Num2
    COMPUTE Total = Num1 + Num2
    DISPLAY Num1 " + " Num2 " = " Total
    DISPLAY "Enter your social security number "
    ACCEPT SSNum
    DISPLAY "Area" SSArea
    

STOP RUN.

*> cobc -x coboltut.cob         to load the program
*> ./coboltut                  to run the program