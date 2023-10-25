from queue import Queue as Cola
from queue import LifoQueue as Pila


"""
ARCHIVOS
"""

# 1

def contar_lineas(nombre_archivo: str) -> int:
    contador = 0 
    with open(nombre_archivo, "r", encoding="utf-8") as file:
        lineas = file.readlines()
        for line in lineas:
            contador += 1

    return contador 

print("La cantidad de lineas que tiene son:", contar_lineas("/home/clinux01/Descargas/python/texto.txt"))

def existe_palabra(palabra: str, nombre_archivo: str) -> bool:
    with open(nombre_archivo, "r", encoding="utf-8") as file:
        lineas = file.readlines()
        for line in lineas:
           if palabra in line: 
               return True 
        else:
            return False

print(existe_palabra("pelotudo","/home/clinux01/Descargas/python/texto.txt"))


def cantidad_apariciones(palabra_buscada: str, nombre_archivo: str) -> int:
    with open(nombre_archivo, "r", encoding="utf-8") as file:
        lineas = file.readlines()
        apariciones = 0
        palabras = list()

        for palabra in lineas:
            linea = palabra.lstrip().split(" ")
            for palabra in linea:
                palabras.append(palabra)
                if palabra == palabra_buscada:
                    apariciones += 1
    
    return apariciones

print(cantidad_apariciones("pelotudo","/home/clinux01/Descargas/python/texto.txt"))


# 2

def clonar_sin_comentarios(nombre_archivo: str) -> None:
    lineas_sin_comentario: list[str] = list()
    with open(nombre_archivo, "r", encoding="utf-8") as file:
        lineas: list[str] = file.readlines()
        for linea in lineas:
            if not linea.lstrip().startswith("#"):
                lineas_sin_comentario.append(linea)

    with open(nombre_archivo + "_sin_comentarios.txt", "w", encoding="utf-8") as file:
        file.writelines(lineas_sin_comentario)


# 3

def escribir_en_reverso(nombre_archivo):
    copia_archivo_reverso = list()
    with open(nombre_archivo, "r", encoding="utf-8") as file:
        lineas = file.readlines()
        # metodo sin for
        # copia_archivo_reverso = lineas[::-1]
        for value in lineas:
            copia_archivo_reverso = [value] + copia_archivo_reverso
    print(copia_archivo_reverso)

escribir_en_reverso("/home/clinux01/Descargas/python/texto.txt")


# 4


# 5


# 6


# 7

"""
PILAS
"""

# 8

# 9

# 10

def ElMaximo(p: Pila[int]) -> int:
    res: int = p.get()

    while not p.empty():
        elem: int = p.get()
        if elem > res:
            res = elem

    return res         

def copiar(p:Cola) -> Cola:
    elements: int=[]
    while not p.empty():
        elements.append(p.get())
    p_copy: Cola = Cola()
    for i in range(len(elements)-1, 0-1,-1):
        p.put(elements[i])
        p_copy.put(elements[i])
    return p_copy

def buscarElMaximo (p:Cola) -> int:
    p_copy: Cola = copiar(p)   
    value=p_copy.get()
    while not p_copy.empty():
        next_value=p_copy.get()
        value=max(next_value,value)
    return value

pila: Cola=Cola()
pila.put(1)
pila.put(4)
pila.put(-3)
print(list(pila.queue))
print(buscarElMaximo(pila))
print(list(pila.queue))



# 11

# 12


"""
COLAS
"""

# 13

# 14

# 15

# 16

import random

def armarSecuencideBingo() -> Cola:
    l: [int] = []
    for i in range (0, 99+1, 1):
        l.append(i)
    random.shuffle(l)
    result= Queue = Queue()
    for elem in l:
        result.put(elem)
    return result 



# 17

# 18

"""
DICCIONARIOS
"""

# 19

# 20

# 21

# 22

# 23