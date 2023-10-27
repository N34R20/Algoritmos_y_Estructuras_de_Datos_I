from queue import Queue as Cola
from queue import LifoQueue as Pila
import random

"""
ARCHIVOS
"""

# 1

def contarLineas(nombre_archivo: str) -> int:
    contador = 0 
    with open(nombre_archivo, "r", encoding="utf-8") as file:
        lineas = file.readlines()
        for line in lineas:
            contador += 1

    return contador 


def existePalabra(palabra: str, nombre_archivo: str) -> bool:
    with open(nombre_archivo, "r", encoding="utf-8") as file:
        lineas = file.readlines()
        for line in lineas:
           if palabra in line: 
               return True 
        else:
            return False



def cantidadApariciones(palabra_buscada: str, nombre_archivo: str) -> int:
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



# 2

def clonarSinComentarios(nombre_archivo: str) -> None:
    lineas_sin_comentario: list[str] = list()
    with open(nombre_archivo, "r", encoding="utf-8") as file:
        lineas: list[str] = file.readlines()
        for linea in lineas:
            if not linea.lstrip().startswith("#"):
                lineas_sin_comentario.append(linea)

    with open(nombre_archivo + "_sin_comentarios.txt", "w", encoding="utf-8") as file:
        file.writelines(lineas_sin_comentario)


# 3

def escribirEnReverso(nombre_archivo):
    copia_archivo_reverso = list()
    with open(nombre_archivo, "r", encoding="utf-8") as file:
        lineas = file.readlines()
        # metodo sin for
        # copia_archivo_reverso = lineas[::-1]
        for value in lineas:
            copia_archivo_reverso = [value] + copia_archivo_reverso
    print(copia_archivo_reverso)


# 4

def agregarFraseAlFinal(nombre_archivo: str, frase: str) -> None:
    with open(nombre_archivo, "a", encoding="utf-8") as file:
        file.write(frase)
    return None


# 5

def agregarFraseAlPrincipio(nombre_archivo: str, frase: str) -> None:
    with open(nombre_archivo, 'a', encoding='utf-8') as file:
    # Move the file pointer to the beginning of the file
        file.seek(0)
    # Write the new data to the file
        file.write(frase+"\n")

return None

# 6

def binarioMasLegibles(nombre_archivo: str) -> List():
    palabras_legibles = list()

    with open(nombre_archivo, 'rb', encoding='utf-8') as file:
        lineas = file.readlines()
    return  palabras_legibles

# 7 
def inspect_column(data: list, num_of_column: int) -> list:
  list_ = list()
  for line in data[1::]:
    list_.append(line.split(",")[num_of_column].replace("\n", "").strip())
  return list_

def promedioEstudiante(lu: str) -> float:
    with open(nombre_archivo, 'r', encoding='utf-8') as file:
        lineas = file.readlines()
    return 

"""
PILAS
"""

# 8

def generar_numeros_random(n:int,desde:int,hasta:int) ->Pila:
    p=Pila()
    for i in range(n):
        p.put(random.randint(desde, hasta))
        
    return p

# 9

def cantidad_elementos(p:Pila)-> int:
    elementos:int= 0 
    while not p.empty():
        p.get()
        elementos+=1
    return elementos


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

"""
pila: Cola=Cola()
pila.put(1)
pila.put(4)
pila.put(-3)
print(list(pila.queue))
print(buscarElMaximo(pila))
print(list(pila.queue))
"""


# 11

def chequear_parejas(lista):
    
    if "(" not in lista or ")" not in lista:
        
        return lista
    
    else:
        lista.remove("(")
        lista.remove(")")
        print(lista)
        chequear_parejas(lista)

    return lista    


def esta_bien_balanceada(formula:str) -> bool:
    
    caracteres_balanceados = list()
    for char in formula:
        if char == '(' or char == ')':
            caracteres_balanceados.append(char)

    if len(caracteres_balanceados)%2 == 0 and caracteres_balanceados[0] == "(" and caracteres_balanceados[-1] == ")":
        nueva = chequear_parejas(caracteres_balanceados)

        if nueva == ["(",")"] or len(nueva) == 0:
            return True 
        else: 
            return False    

    else: 
            return False        
    
print(esta_bien_balanceada("(())()"))

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