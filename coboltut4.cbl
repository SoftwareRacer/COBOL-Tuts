>>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. coboltut.
AUTHOR. Hennermann Marco.
DATE-WRITTEN. July 29th 2020
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
SPECIAL-NAMES.
DATA DIVISION.
LINKAGE SECTION.
       01 LNum1    PIC 9 VLAUE 5.
       01 LNum2    PIC 9 VALUE 4.
       01 LSum1    PIC 99.
FILE SECTION.
WORKING-STORAGE SECTION.

PROCEDURE DIVISION USING LNum1, Lnum2, LSum.
       COMPUTE LSum = LNum1 + LNum2.
EXIT PROGRAM.

*> cobc -x coboltut.cob         to load the program
*> ./coboltut                  to run the program

*> cobc -m coboltut2.cbl   to load a subroutine