'----------------------
'- SIGILOS -
'----------------------
CLS
REM $NOPREFIX
CONST YELLOW = _RGB32(255, 255, 0)
CONST BLUE = _RGB32(0, 255, 255)
CONST MAGENTA = _RGB32(255, 0, 255)
CONST RED = _RGB32(127, 0, 0)
CONST BRIGHTRED = _RGB32(255, 0, 0)
CONST GREEN = _RGB32(0, 127, 0)
CONST BRIGHTGREEN = _RGB32(0, 255, 0)
CONST TRUE=-1
CONST FALSE=0
SCREEN _NEWIMAGE(1024, 800, 32)
REM  PRINT "LINE (69, 89)-(640, 480), _RGB32(255, 255, 0)"
DIM SHARED CASILLA
DIM SHARED OFFSET
DIM SHARED PUNTOS(25,2)
DIM SHARED LETRAS(25) AS STRING
REM DIM DESEO AS STRING
REM P = _LOADIMAGE("c:\qb64\SIGILOS\CRIPTA1.JPG")
REM _PUTIMAGE (0, 481), P
CASILLA=96
OFFSET=(CASILLA/2)+2
CALL CARGA_LETRAS
CALL CARGA_PUNTOS
CALL PINTA_CUADRICULA
CALL PINTA_SIGILO
LOCATE 40, 34
PRINT "PRESS A KEY";
SLEEP
CLS
SUB PINTA_SIGILO
    DESEO$="ADELGZR"
    FOR I=1 TO LEN(DESEO$)
        LETRA_ORIGEN$=MID$(DESEO$,I,1)
        LETRA_DESTINO$=MID$(DESEO$,I+1,1)
        SELECT CASE LETRA_ORIGEN$
            CASE "A"
                X_INICIO=PUNTOS(1,1)
                Y_INICIO=PUNTOS(1,2)
            CASE "B"
                X_INICIO=PUNTOS(2,1)
                Y_INICIO=PUNTOS(2,2)
            CASE "C"
                X_INICIO=PUNTOS(3,1)
                Y_INICIO=PUNTOS(3,2)
            CASE "D"
                X_INICIO=PUNTOS(4,1)
                Y_INICIO=PUNTOS(4,2)
            CASE "E"
                X_INICIO=PUNTOS(5,1)
                Y_INICIO=PUNTOS(5,2)
            CASE "F"
                X_INICIO=PUNTOS(6,1)
                Y_INICIO=PUNTOS(6,2)
            CASE "G"
                X_INICIO=PUNTOS(7,1)
                Y_INICIO=PUNTOS(7,2)
            CASE "H"
                X_INICIO=PUNTOS(8,1)
                Y_INICIO=PUNTOS(8,2)
            CASE "I"
                X_INICIO=PUNTOS(9,1)
                Y_INICIO=PUNTOS(9,2)
            CASE "J"
                X_INICIO=PUNTOS(10,1)
                Y_INICIO=PUNTOS(10,2)
            CASE "K"
                X_INICIO=PUNTOS(11,1)
                Y_INICIO=PUNTOS(11,2)
            CASE "L"
                X_INICIO=PUNTOS(12,1)
                Y_INICIO=PUNTOS(12,2)
            CASE "M"
                X_INICIO=PUNTOS(13,1)
                Y_INICIO=PUNTOS(13,2)
            CASE "N"
                X_INICIO=PUNTOS(14,1)
                Y_INICIO=PUNTOS(14,2)
            CASE "O"
                X_INICIO=PUNTOS(15,1)
                Y_INICIO=PUNTOS(15,2)
            CASE "P"
                X_INICIO=PUNTOS(16,1)
                Y_INICIO=PUNTOS(16,2)
            CASE "Q"
                X_INICIO=PUNTOS(17,1)
                Y_INICIO=PUNTOS(17,2)
            CASE "R"
                X_INICIO=PUNTOS(18,1)
                Y_INICIO=PUNTOS(18,2)
            CASE "S"
                X_INICIO=PUNTOS(19,1)
                Y_INICIO=PUNTOS(19,2)
            CASE "T"
                X_INICIO=PUNTOS(20,1)
                Y_INICIO=PUNTOS(20,2)
            CASE "U"
                X_INICIO=PUNTOS(21,1)
                Y_INICIO=PUNTOS(21,2)
            CASE "V"
                X_INICIO=PUNTOS(22,1)
                Y_INICIO=PUNTOS(22,2)
            CASE "W"
                X_INICIO=PUNTOS(23,1)
                Y_INICIO=PUNTOS(23,2)
            CASE "X"
                X_INICIO=PUNTOS(24,1)
                Y_INICIO=PUNTOS(24,2)
            CASE "Z"
                X_INICIO=PUNTOS(25,1)
                Y_INICIO=PUNTOS(25,2)
        END SELECT
        SELECT CASE LETRA_DESTINO$
            CASE "A"
                X_FINAL=PUNTOS(1,1)
                Y_FINAL=PUNTOS(1,2)
            CASE "B"
                X_FINAL=PUNTOS(2,1)
                Y_FINAL=PUNTOS(2,2)
            CASE "C"
                X_FINAL=PUNTOS(3,1)
                Y_FINAL=PUNTOS(3,2)
            CASE "D"
                X_FINAL=PUNTOS(4,1)
                Y_FINAL=PUNTOS(4,2)
            CASE "E"
                X_FINAL=PUNTOS(5,1)
                Y_FINAL=PUNTOS(5,2)
            CASE "F"
                X_FINAL=PUNTOS(6,1)
                Y_FINAL=PUNTOS(6,2)
            CASE "G"
                X_FINAL=PUNTOS(7,1)
                Y_FINAL=PUNTOS(7,2)
            CASE "H"
                X_FINAL=PUNTOS(8,1)
                Y_FINAL=PUNTOS(8,2)
            CASE "I"
                X_FINAL=PUNTOS(9,1)
                Y_FINAL=PUNTOS(9,2)
            CASE "J"
                X_FINAL=PUNTOS(10,1)
                Y_FINAL=PUNTOS(10,2)
            CASE "K"
                X_FINAL=PUNTOS(11,1)
                Y_FINAL=PUNTOS(11,2)
            CASE "L"
                X_FINAL=PUNTOS(12,1)
                Y_FINAL=PUNTOS(12,2)
            CASE "M"
                X_FINAL=PUNTOS(13,1)
                Y_FINAL=PUNTOS(13,2)
            CASE "N"
                X_FINAL=PUNTOS(14,1)
                Y_FINAL=PUNTOS(14,2)
            CASE "O"
                X_FINAL=PUNTOS(15,1)
                Y_FINAL=PUNTOS(15,2)
            CASE "P"
                X_FINAL=PUNTOS(16,1)
                Y_FINAL=PUNTOS(16,2)
            CASE "Q"
                X_FINAL=PUNTOS(17,1)
                Y_FINAL=PUNTOS(17,2)
            CASE "R"
                X_FINAL=PUNTOS(18,1)
                Y_FINAL=PUNTOS(18,2)
            CASE "S"
                X_FINAL=PUNTOS(19,1)
                Y_FINAL=PUNTOS(19,2)
            CASE "T"
                X_FINAL=PUNTOS(20,1)
                Y_FINAL=PUNTOS(20,2)
            CASE "U"
                X_FINAL=PUNTOS(21,1)
                Y_FINAL=PUNTOS(21,2)
            CASE "V"
                X_FINAL=PUNTOS(22,1)
                Y_FINAL=PUNTOS(22,2)
            CASE "W"
                X_FINAL=PUNTOS(23,1)
                Y_FINAL=PUNTOS(23,2)
            CASE "X"
                X_FINAL=PUNTOS(24,1)
                Y_FINAL=PUNTOS(24,2)
            CASE "Z"
                X_FINAL=PUNTOS(25,1)
                Y_FINAL=PUNTOS(25,2)
        END SELECT
        LINE (X_INICIO, Y_INICIO)-(X_FINAL, Y_FINAL), BRIGHTGREEN
    NEXT I
END SUB
SUB CARGA_PUNTOS
    INCREMENTO=0
    FOR I=1 TO 25
        IF INCREMENTO=5 THEN
            INCREMENTO=0
        END IF
        PUNTOS(I,1)=OFFSET+CASILLA*INCREMENTO
        INCREMENTO=INCREMENTO+1
    NEXT I
    FOR I=1 TO 25
       
        SELECT CASE I
            CASE 1 TO 5 : INCREMENTO=0
            CASE 6 TO 10 : INCREMENTO=1
            CASE 11 TO 15 : INCREMENTO=2
            CASE 16 TO 20 : INCREMENTO=3
            CASE 21 TO 25 : INCREMENTO=4
        END SELECT
        IF INCREMENTO=5 THEN
            INCREMENTO=0
        END IF
        PUNTOS(I,2)=OFFSET+CASILLA*INCREMENTO
       
    NEXT I
END SUB
SUB PINTA_CUADRICULA
    FOR I=1 TO 25
        PSET(PUNTOS(I,1),PUNTOS(I,2)), YELLOW
    NEXT I
    LINE (0, 0)-(CASILLA*5,CASILLA*5 ), RED, B
    LINE (0, 96)-(480,96), RED
    LINE (0, 96*2)-(480,96*2), RED
    LINE (0, 96*3)-(480,96*3), RED
    LINE (0, 96*4)-(480,96*4), RED
    LINE (96, 0)-(96,480), RED
    LINE (96*2, 0)-(96*2,480), RED
    LINE (96*3, 0)-(96*3,480), RED
    LINE (96*4, 0)-(96*4,480), RED
   
END SUB
SUB CARGA_LETRAS
    LETRAS(1)="A"
    LETRAS(2)="B"
    LETRAS(3)="C"
    LETRAS(4)="D"
    LETRAS(5)="E"
    LETRAS(6)="F"
    LETRAS(7)="G"
    LETRAS(8)="H"
    LETRAS(9)="I"
    LETRAS(10)="J"
    LETRAS(11)="K"
    LETRAS(12)="L"
    LETRAS(13)="M"
    LETRAS(14)="N"
    LETRAS(15)="O"
    LETRAS(16)="P"
    LETRAS(17)="Q"
    LETRAS(18)="R"
    LETRAS(19)="S"
    LETRAS(20)="T"
    LETRAS(21)="U"
    LETRAS(22)="V"
    LETRAS(23)="W"
    LETRAS(24)="X"
    LETRAS(25)="Z"
    LOCATE 2,2
    PRINT LETRAS(1)
    LOCATE 1,14
    PRINT LETRAS(2)
    LOCATE 1,27
    PRINT LETRAS(3)
    LOCATE 1,40
    PRINT LETRAS(4)
    LOCATE 1,53
    PRINT LETRAS(5)
    LOCATE 7,1
    PRINT LETRAS(6)
    LOCATE 7,14
    PRINT LETRAS(7)
    LOCATE 7,27
    PRINT LETRAS(8)
    LOCATE 7,40
    PRINT LETRAS(9)
    LOCATE 7,53
    PRINT LETRAS(10)
    LOCATE 13,1
    PRINT LETRAS(11)
    LOCATE 13,14
    PRINT LETRAS(12)
    LOCATE 13,27
    PRINT LETRAS(13)
    LOCATE 13,40
    PRINT LETRAS(14)
    LOCATE 13,53
    PRINT LETRAS(15)
   
    LOCATE 19,1
    PRINT LETRAS(16)
    LOCATE 19,14
    PRINT LETRAS(17)
    LOCATE 19,27
    PRINT LETRAS(18)
    LOCATE 19,40
    PRINT LETRAS(19)
    LOCATE 19,53
    PRINT LETRAS(20)
    LOCATE 25,1
    PRINT LETRAS(21)
    LOCATE 25,14
    PRINT LETRAS(22)
    LOCATE 25,27
    PRINT LETRAS(23)
    LOCATE 25,40
    PRINT LETRAS(24)
    LOCATE 25,53
    PRINT LETRAS(25)
END SUB
