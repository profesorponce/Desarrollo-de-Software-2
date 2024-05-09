; Programa DetectarTeclas
; (c) RicardoPonce
; https://https://profesorponce.blogspot.com/
;
; Programa de demostracion para uso de consola
; Con las teclas de cursos DERECHA e IZQUIERDA
; permite mover un avioncito
; el programa tiene un procedimiento para
; elrefresco y dibujo de pantalla
; el main principal detect las teclas
; presionadas para actualizar la pantalla

Procedure DibujarPantalla (Posicion.w)
  
  EnableGraphicalConsole(1)

  ConsoleLocate(0, 0)
  PrintN(" ")
  PrintN(" ")
  PrintN(" ")
  PrintN(" ")
  
  ConsoleLocate(0, 0)
  auxiliar$ = Space(Posicion) + "-<o>-" + "          "
  PrintN(" ")
  PrintN(auxiliar$)
  PrintN(" ")
  PrintN("Presiones ESCAPE para salir")
  
EndProcedure  

If OpenConsole()
  
    ConsoleTitle("Detectando teclas de cursor")
  
    DibujarPantalla (0)
    
    CURSOR_IZQ.w = 37
    CURSOR_ARR.w = 38
    CURSOR_DER.w = 39
    CURSOR_ABA.w = 40
    
    PosActual.w = 0
  
    Repeat
      
      KeyPressed$ = Inkey()
      
      Select RawKey()
          
        Case CURSOR_IZQ
            PrintN("Presionó tecla IZQUIERDA       ")
            PosActual = PosActual -1
            If PosActual <0 
              PosActual = 0
            EndIf  
            DibujarPantalla(PosActual)  
    
          Case CURSOR_ARR
            PrintN("Presionó tecla ARRIBA       ")
            DibujarPantalla(PosActual)  
            
          Case CURSOR_DER
            PrintN("Presionó tecla DERECHA      ")
            PosActual = PosActual + 1
            If PosActual > 10 
              PosActual = 10
            EndIf  
            DibujarPantalla(PosActual)  
              
          Case CURSOR_ABA
            PrintN("Presionó tecla ABAJO       ")
            DibujarPantalla(PosActual)  
            
          Default
            
      EndSelect    
       
    
    Until KeyPressed$ = Chr(27) ; Wait until escape is pressed
    
    ClearConsole()
    PrintN("Seleccionó SALIR. Espere 3 segundos.")
    Delay(3000) ; espera de 3000 milisengundos (3 Segundos)
    
  EndIf


; IDE Options = PureBasic 5.70 LTS (Windows - x86)
; CursorPosition = 10
; Folding = -
; EnableXP