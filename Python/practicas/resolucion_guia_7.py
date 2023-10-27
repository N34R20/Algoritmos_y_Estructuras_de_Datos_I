from array import * 
from typing import List

"""
Primera Parte

"""

# EJERCICIO 1

#1.1
def pertenece_v1(elemento :int, lista: List[int]) -> bool:
    
    for i in lista:
        if elemento == i:
            return True 
    return False

def pertenece_v2(elemento :int, lista: List[int]) -> bool:
    
    res: bool = False
    for i in lista:
        if elemento is i:
            res = True 
    return res

def pertenece_v3(elemento :int, lista: List[int]) -> bool:
    return elemento in lista

# 1.2
def divideATodos(s:List[int], e:int) -> bool:
    for i in s:
        if e%i != 0:
            return False
    return True     


# 1.3 
def sumaTotal(lista :List[int]) -> int:
    contador = 0
    for i in lista:
        contador += i

    res:int = contador
    return res

print(sumaTotal([1,2,3,4]))

# 1.4
def ordenados(lista :List[int]) -> bool:
    for i in range(len(lista)):
        if lista[i] < lista[i+1]:
            return True
        else:
            return False    


# 1.7
def tieneMinuscula(contra:str) -> str:
    res = False
    for i in contra:
        if i >= 'a' and i>= "z":
            res = True 
    return res

def tieneMayuscula(contra:str) -> str:
    res = False
    for i in contra:
        if i >= 'A' and i>= "Z":
            res = True 
    return res

def tieneNumero(contra:str) -> str:
    res = False
    for i in contra:
        if i >= '0' and i>= "9":
            res = True 
    return res

def fortaleza(contra:str) -> str:
    return None


"""
Segunda Parte
"""

# EJERCICIO 2

# 2.1)
def inOutParesACero(lista:List[int]) -> List[int]:
    for i in range(len(lista)):
        if i%2==0:
            lista[i] = 0
    return lista

print(inOutParesACero([1,2,3,4,5,6,7]))


# 2.2) 
def inParesACero(lista:List[int]) -> List[int]:
    lista_modificada = lista
    for i in range(len(lista)):
        if i%2==0:
            lista_modificada[i] = 0
    return lista_modificada 

print(inParesACero([1,2,3,4,5,6,7]))

# 2.3) 
def quitarVocales(cadena:str) -> str:
    vocales = ['a','e','i','o','u']
    cadena_modificada = cadena
    for i in range(len(cadena)):
        if i in vocales:
            cadena_modificada.replace(cadena_modificada[i], '')
    return cadena_modificada 

# 2.4) 
def reemplazaVocales(cadena:str) -> str:
    vocales = ['a','e','i','o','u']
    cadena_modificada = cadena
    for i in range(len(cadena)):
        if i in vocales:
            cadena_modificada.replace(cadena_modificada[i], '_')
    return cadena_modificada 

# 2.5)
def daVueltaStr(cadena:str) -> str:
    return cadena[::-1]

# 2.6)
def eliminarRepetidos(cadena:str) -> str:

    for i in range(len(cadena)):
        if pertenece_v1(cadena[i], cadena):
            cadena.remove(cadena[i])

    return cadena

print(eliminarRepetidos(["a", "a", "b", "eee", "aws", "ggol", "a", "A", "b"]))

# EJERCICIO 3



# EJERCICIO 4


# 4.1) 
def listaEstudiantes():
    return None


# 4.2) 
def historialSUBE():
    return None

# 4.3) 
def sieteYMedio():
    return None

# EJERCICIO 5

# 5.1)
def perteneceACadaUno():
    return 

# 5.2) 
def esMatriz():
    return None

# 5.3) 
def filasOrdenadas():
    return None

# 5.4) 
def matrizElevadoAlAzar():
    return None

