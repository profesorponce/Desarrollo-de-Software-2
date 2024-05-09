; Programa Variables
; (c) RicardoPonce
; https://https://profesorponce.blogspot.com/
;
; Tipos de variables trabajadas por PureBasic
; Programa para explicar en clase las variables
; que puede operar PureBasic, como se declaran,
; sus limites y cmo declarar variables del tipo
; global para que sean visibles en todos los
; procedimientos 

; Declaracion de globales siempre ANTES del CODIGO FUENTE
Global var_global.f

; Procedimientos siempre ANTES del MAIN principal
Procedure Presentar(var_enviada$)
  
    Debug "(Estamos dentro del procedimiento)"
    Debug "var_global: " + var_global  
    Debug "var_enviada$: " + var_enviada$
    
EndProcedure

OpenConsole("Titulo de la ventana")


        ; NUMBERS
        ; --------------------------------------------------------------------------------------------
        ; tipo            sufijo  tamaño en RAM		    límite numérico
        ; --------------------------------------------------------------------------------------------
        ; Byte        	  .b	    1 byte (8 bits)		  -128 To 127
        ; Char (Ascii)	  .c	    1 byte (8 bits)		  0 To 255
        ; Char (Unicode)	.c	    2 bytes (16 bits)	  0 To 65535
        ; Word		        .w	    2 bytes (16 bits)  	-32768 To 32767
        ; Long		        .l	    4 bytes (32 bits)   -2.147.483.648 To 2.147.483.647
        ; Quad		        .q	    8 bytes (64 bits)	  -9223372036854775808 To 9223372036854775807
        ; Float		        .f	    4 bytes (32 bits)	  Unlimited
        ; Double		      .d	    8 bytes (64 bits)	  Unlimited
        
        ; STRINGS
        ; --------------------------------------------------------------------------------------------
        ; tipo                  sufijo      tamaño en RAM		    límite numérico
        ; --------------------------------------------------------------------------------------------
        ; String			          .s		      string length + 1	  Unlimited
        ; String			          $		        string length + 1	  Unlimited
        ; Fixed Length String	  .s{length}	string length 	    User Defined
        ; Fixed Length String	  ${length}	  string length 	    User Defined


        ; Definición individual (nombre+sufijo)
        ByteVariable.b = 123
        CharVariable.c = 222
        WordVariable.w = 4567
        LongVariable.l = 891011
        QuadVariable.q = 9223372036854775807
        FloatVariable.f = 3.1415927
        DoubleVariable.d = 12.53456776674545
        StringVariableOne.s = "Test String One"
        StringVariableTwo$ = "Test String Two"
        StringVariableThree.s{6} = "abcdef"
        StringVariableFour${3} = "abc"
        
        
        ; Definición en bloque (Define+sufijo)
        Define.b NumberOfLinesOfCode = 1, TodaysDate = 11
        
        ; Debugging de variables (Ventana Debug)
        StringVariable.s = "Test String One"
        StringVariable$ = "Test String Two"
        Debug "------------------VARIABLES"
        Debug StringVariable.s
        Debug StringVariable$        
        Debug NumberOfLinesOfCode
        Debug TodaysDate
        
        ; Constantes
        Debug "------------------CONSTANTES STRING"
        #DAYS_IN_THE_YEAR = "365"
        Debug "Hay " + #DAYS_IN_THE_YEAR + " dias en un año común."
        Debug "Hay " + Str((Val(#DAYS_IN_THE_YEAR) +1)) + " en un año bisiesto."
        
        Debug " "
        Debug "------------------CONSTANTES NUMERICAS ENTERAS"
        #DIAS_DEL_ANIO = 365
        Debug "Hay " + #DIAS_DEL_ANIO + " dias en un año común."
        Debug "Hay " + Str(#DIAS_DEL_ANIO + 1) + " en un año bisiesto."        
        
        Debug " "
        Debug "------------------CONSTANTES NUMERICAS REALES"
        #CONSTANTE_PI = "3.16"
        Debug "Constante PI es " + #CONSTANTE_PI
        Debug "Constante PI +1 es " + Str(ValD(#CONSTANTE_PI) + 1)
        

        ; Declaración de constantes en bloque (Enumeración del compilador)
        Enumeration
          #ZERO
          #ONE
          #TWO
          #THREE
        EndEnumeration
        
        Debug " "
        Debug "------------------ENUMERACION DEL COMPILADOR"
        Debug "Enumeración:"
        Debug "#ZERO: " + #ZERO
        Debug "#ONE:" + #ONE 
        Debug "#TWO:" + #TWO
        Debug "#THREE:" + #THREE
        
        ; Declaración de constantes en bloque (Enumeración inicia en 5)
        Enumeration 5
          #FIVE
          #ONE_HUNDRED = 100    ; enumeración salta a 100 y continúa
          #ONE_HUNDRED_AND_ONE
          #ONE_HUNDRED_AND_TWO
        EndEnumeration
        
        Debug " "
        Debug "------------------ENUMERACION DEL PROGRAMADOR"
        Debug #FIVE
        Debug #ONE_HUNDRED
        Debug #ONE_HUNDRED_AND_ONE
        Debug #ONE_HUNDRED_AND_TWO
        
        
        Debug " "
        Debug "------------------VARIABLES GLOBALES"
        
        var_global=100.4 ; declarada en zona de GLOBALES antes del CODIGO FUENTE
        
        Presentar("Las variables GLOBALES deben ser declaradas antes de cualquier CODIGO FUENTE")
End




; IDE Options = PureBasic 5.70 LTS (Windows - x86)
; CursorPosition = 9
; Folding = -
; EnableXP