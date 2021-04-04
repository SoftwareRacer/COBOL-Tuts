>>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. coboltut.
AUTHOR. Hennermann Marco.
DATE-WRITTEN. July 29th 2020
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
SPECIAL-NAMES.
       CLASS PassingScore IS "A" THRU "C", "D".

DATA DIVISION.
FILE SECTION.
WORKING-STORAGE SECTION.
01 Age PIC 99 VALUE 0.
01 Grade PIC 99 VALUE 0.
01 Score PIC X(1) VALUE "B".
01 CanVoteFlag PIC 9 VALUE 0.
       88 CanVote VALUE 1.
       88 CantVote VALUE 0.
01 TestNumber PIC X.
       88 IsPrime  VALUE "1", "3", "5", "7".
       88 IsOdd    VALUE "1", "3", "5", "7", "9".
       88 IsEven   VALUE "2", "4", "6", "8".
       88 number   VALUE 0 THRU 9.

PROCEDURE DIVISION.
DISPLAY "Enter Age : " WITH NO ADVANCING
ACCEPT Age
IF Age > 18 THEN 
       DISPLAY "You can vote"
ELSE
       DISPLAY "You can't vote"
END-IF

*> < LESS THAN
*> > GREATER THAN
*> = EQUAL TO

IF Age LESS THAN 5 THEN
       DISPLAY "Stay Home"
END-IF
IF Age = 5 THEN
       DISPLAY "Go to Kindergarten"
END-IF
IF Age > 5 AND Age < 18 THEN
       COMPUTE Grade = Age - 5
       DISPLAY "Go to Grade " Grade
END-IF

IF Score IS PassingScore THEN
       DISPLAY "You Passed"
ELSE
       DISPLAY "You failed
END-IF

IF Age > 18 THEN
       SET CantVote TO FALSE
END-IF

DISPLAY "Enter Single Number or X to Exit: "
ACCEPT TestNumber
PERFORM UNTIL NOT ANumber:
       EVALUATE TRUE
           WHEN IsPrime DISPLAY "Prime"
           WHEN IsOdd DISPLAY "Odd"
           WHEN IsEven DISPLAY "Even"
       END-EVALUATE
       ACCEPT TestNumber
END-PERFORM


STOP RUN.

*> cobc -x coboltut.cob         to load the program
*> ./coboltut                  to run the program