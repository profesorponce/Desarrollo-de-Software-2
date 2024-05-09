; Programa EsperarEscapeConsola
; (c) RicardoPonce
; https://https://profesorponce.blogspot.com/
;
; Programa de demostracion para uso de consola
; Princpalmente este programa permite detectar 
; la tecla que se ha presionado y presente su
; código en pantalla

If OpenConsole()
  
    ConsoleTitle("Esperar Escape en Consola")
  
    PrintN("Presiones ESCAPE para salir")
  
    Repeat
      KeyPressed$ = Inkey()
      
      If KeyPressed$ <> ""
        
        PrintN("Presionó la tecla: " + KeyPressed$)
        PrintN("Su código ASCII es: "+Str(RawKey()))
        
      ElseIf RawKey()
      
        PrintN("Usted presióno una tecla NO-ASCII.")
        PrintN("Su código nuérico es: "+Str(RawKey()))
        
      Else
        Delay(20) ; espera de 20 milisegundos
      EndIf
    
    Until KeyPressed$ = Chr(27) ; Wait until escape is pressed
    
    ClearConsole()
    PrintN("Seleccionó SALIR. Espere 3 segundos.")
    Delay(3000) ; espera de 3000 milisengundos (3 Segundos)
    
  EndIf


; IDE Options = PureBasic 5.70 LTS (Windows - x86)
; CursorPosition = 7
; EnableXP