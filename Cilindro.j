.class public Cilindro
.super Circulo
.implements Conicas
; NOTA hereda el radio: .field protected radio F 
.field protected altura F

.method public <init>(FF)V
.limit stack 3
.limit locals 3
   aload_0
   fload_1
   invokespecial Circulo/<init>(F)V
   
   aload_0
   fload_2
   putfield Cilindro/altura F 
   
   return
   
.end method

.method volumen()F 
.limit stack 3
.limit locals 2
    aload_0
	invokespecial Circulo/area()F 
	aload_0
	getfield Cilindro/altura F
    fmul
    freturn 	
.end method

.method area()F
    ; agregar las sentecias para hacer el metodo area()F
    ; Calcular el área de la base del cilindro (círculo)
    aload_0
    invokespecial Circulo/area()F 
    ; Calcular el área lateral del cilindro
    aload_0
    getfield Cilindro/radio F
    aload_0
    getfield Cilindro/altura F
    fmul
    ldc 3.14159265   ; Carga el valor de pi
    fmul             ; Multiplica por el radio
    fmul             ; Multiplica por la altura
    ; Sumar las áreas de la base y lateral del cilindro
    fadd
    freturn          ; Devuelve el resultado
.end method



