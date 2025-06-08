
       IDENTIFICATION DIVISION.
       PROGRAM-ID. esPrimo.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  numero pic S9(10) VALUE ZERO.
       01  aux pic 9(10) value ZERO.
       01  resto pic 9(10) value ZERO.
       01  resultado pic 9(10) value ZERO.
       01  contador pic 99 value ZERO.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM DATOS.

       DATOS.
           DISPLAY "Introduzca un numero para saber si es primo"
           " Introduzca numero negativo para salir".
           ACCEPT numero.

           if numero < 0
               PERFORM FIN-PROGRAMA.
           PERFORM PRIMO.
           if contador > 2
               DISPLAY "El numero " numero " no es primo"
               PERFORM FIN-PROGRAMA
           ELSE
               DISPLAY "El numero " numero " es primo".
               PERFORM FIN-PROGRAMA.
       PRIMO.
           if numero = 1 or numero = 2  or numero = 3
               DISPLAY "El numero " numero " es primo".

           PERFORM calculos numero TIMES.


       calculos.
           add 1 to aux.
           DIVIDE numero by aux GIVING resultado REMAINDER resto.
           if resto = 0
               add 1 to contador.

       FIN-PROGRAMA.
            STOP RUN.
       END PROGRAM esPrimo.
