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
01 Ind PIC 9(1) VALUE 0.
PROCEDURE DIVISION.
PERFORM OutputData WITH TEST AFTER UNTIL Ind > 5
       GO TO ForLoop

OutputData.
       DISPLAY Ind.
       ADD 1 TO Ind.

ForLoop.
       PERFORM OutputData2 VARYING Ind FROM 1 BY 1 UNTIL Ind = 5

OutputData2.
       DISPLAY Ind.

STOP RUN.

*> cobc -x coboltut.cob         to load the program
*> ./coboltut                  to run the program