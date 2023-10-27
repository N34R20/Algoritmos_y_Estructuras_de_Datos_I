
"""
EJERCICIO 1

"""

# 1)
def imprimir_hola_mundo() -> str:
    print("Hola mundo!")


# 2) 
def imprimir_un_verso() -> str:
    print("asasa\nlalalala\ntu ere pa mi")

imprimir_un_verso()

# 3) 
def raizDe2() -> float:
    return round(2**0.5, 4) 

print(raizDe2())

# 4)
def factorial_de_dos() -> int:
    return 2*1*1

# 5) 
import math

def perimetro() -> float:
    return math.pi * 2

print(perimetro()) 
    
"""
EJERCICIO 2

"""

# 1)
def imprimir_saludo(nombre:str) -> str: 
    return f"Hola {nombre}"

# 2) 
def raiz_cuadrada_de(numero:float) -> float:
    return numero**0.5

# 3) 
def fahrenheit_a_celsius(temp_far:float) -> float:
    return ((temp_far - 32) * 5) / 9

# 4) 
def imprimir_dos_veces(estribillo:str) -> str:
    return estribillo * 2

print(imprimir_dos_veces("jeje"))

# 5)
def problema_es_multiplo_de(n:int, m:int) -> bool:
    
    if n%m==0: 
        return True

    else:
        return False

print(problema_es_multiplo_de(5,3))            

# 6)
def es_par(n:int) -> bool:
    
    if n%2==0:
        return True
    else:
        return False    

print(es_par(2))

# 7)
def cantidad_de_pizzas(comensales:int, min_cant_de_porciones:int) -> int:
    return round(comensales * min_cant_de_porciones / 8 , 0) 

print(cantidad_de_pizzas(4,7))

"""
EJERCICIO 3

"""

# 1)
def alguno_es_0(n1:float,n2:float) -> bool:

    if n1 == 0 or n2 == 0:
        return True
    else:
        return False
    

# 2) 
def ambos_son_0(n1:float,n2:float) -> bool:

    if n1 == 0 and n2 == 0:
        return True
    else:
        return False

# 3) 
def es_nombre_largo(nombre:str) -> bool:
    if len(nombre) >= 3 and len(nombre) <= 8:
        return True
    else:
        return False

# 4) 
def es_bisiesto(year:int) -> bool:
    if year%4 == 0 and year%10 != 0:
        return True
    else:
        return False

"""
EJERCICIO 4

"""

# 1)
def peso_pino():
    return None

# 2) 
def es_peso_util():
    return None

# 3) 
def sirve_pino():
    return None

# 4) 
def sirve_pino2():
    return None

"""
EJERCICIO 5

"""

# 1)
def devolver_el_doble_si_es_par(num:int) -> int:
    if num%2==0:
        return num*2
    else:
        return num

# 2) 
def devolver_valor_si_es_par_sino_el_que_sigue(num:int) -> int:
    if num%2==0:
        return num
    else:
        return num+1

# 3) 
def devolver_el_doble_si_es_multiplo3_el_triple_si_es_multiplo9(num:int) -> int:
    if num%3==0:
        return num*2
    elif num%9==0:
        return num*3
    else:
        return num
    
# 4) 
def lindo_nombre(nombre:str) -> str:
    if len(nombre) >= 5:
        return "tu nombre tiene muchas letras"
    else:
        return "tu nombre tiene menos de 5 caracteres"

# 5)
def elRango(num:int):
    if num < 5:
        print("Menor a 5")
    elif 20 > num > 10:
        print("Entre 10 y 20")
    elif num > 20:
        print("Mayor a 20")
    else:
        print("Tu numero es 5, 10 o 20")

# 6)
def vacaciones_o_trabajo(sexo:str, edad:int):
    if str == "F" and edad > 60:
        print("Anda de vacaciones")
    elif str == "M" and edad > 65:
        print("Anda de vacaciones")
    elif edad < 18:
        print("Anda de vacaciones")
    else:
        print("Te toca trabajar")

"""
EJERCICIO 6

"""

# 1)
def del_1_al_10():
    return None

# 2) 
def pares_del_10_al_40():
    return None

# 3)
def ecoX10():
    return None
 
# 4) 
def cohete():
    return None

# 5)
def viaje_en_el_tiempo(partida, llegada):
    return None

# 6)
def viaje_hasta_384aC(partida):
    return None

"""
EJERCICIO 7

"""
# implementar las funciones del EJERCICIO 6 utilizando for num in range(i,f,p):. Recordar que la funci ́on
# range para generar una secuencia de n umeros en un rango dado, con un valor inicial i, un valor final f y un paso p. 

"""
EJERCICIO 8
realizar la ejecucion simbolica de los siguientes codigos

"""

# 1)
def cantidad():
    return None

# 2) 
def cantidad():
    return None

# 3) 
def cantidad():
    return None

# 4) 
def cantidad():
    return None

# 5)
def cantidad():
    return None

"""
EJERCICIO 9

"""

# 1)
def rt(x: int, g: int) -> int:
    return None

# 2) 
def ro(x: int) -> int:
    return None


    return None
