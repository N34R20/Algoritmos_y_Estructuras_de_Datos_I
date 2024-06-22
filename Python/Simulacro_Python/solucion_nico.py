# Ejercicio 1
#
#  problema ultima_aparicion (s: seq⟨Z⟩, e: Z) : Z {
#    requiere: {e pertenece a s }
#    asegura: {res es la posición de la última aparición de e en s}
#  }

# Por ejemplo, dados
#   s = [-1,4,0,4,100,0,100,0,-1,-1]
#   e = 0
# se debería devolver res=7

def ultima_aparicion(s: list, e: int) -> int:
    ultima:int= 0

    for elemento in range(len(s)):
        if s[elemento] == e:
                ultima = elemento
    return ultima
# ultima_aparicion([-1,4,0,4,100,0,100,0,-1,-1],-1)
##########################################################################
##########################################################################

# Ejercicio 2
#
#  problema elementos_exclusivos (s: seq⟨Z⟩, t: seq⟨Z⟩) : seq⟨Z⟩ {
#    requiere: -
#    asegura: {Los elementos de res pertenecen o bien a s o bien a t, pero no a ambas }
#    asegura: {res no tiene elementos repetidos }
#  }

# Por ejemplo, dados
#   s = [-1,4,0,4,3,0,100,0,-1,-1]
#   t = [0,100,5,0,100,-1,5]
# se debería devolver res = [3,4,5] ó res = [3,5,4] ó res = [4,3,5] ó res = [4,5,3] 
# ó res = [5,3,4] ó res = [5,4,3]

def elementos_exclusivos(s: list, t: list) -> list:
    a:list=[]
    for elemento in s:
        if not elemento in t and not elemento in a:
            a.append(elemento)
    for elemento in t:
        if not elemento in s and not elemento in a:
            a.append(elemento)
    return(a)

#print(elementos_exclusivos([-1,4,0,4,3,0,100,0,-1,-1],[0,100,5,0,100,-1,5]))


         



##########################################################################
##########################################################################

# Ejercicio 3
#
# Se cuenta con un diccionario que contiene traducciones de palabras del idioma castellano (claves) a palabras
# en inglés (valores), y otro diccionario que contiene traducciones de palabras en castellano (claves) a palabras
# en alemán (valores). Se pide escribir un programa que dados estos dos diccionarios devuelva la cantidad de 
# palabras que tienen la misma traducción en inglés y en alemán.

#  problema contar_traducciones_iguales (ing: dicc⟨String,String⟩, ale: dicc⟨String,String⟩) : Z {
#    requiere: -
#    asegura: {res = cantidad de palabras que están en ambos diccionarios y además tienen igual valor en ambos}
#  }

#  Por ejemplo, dados los diccionarios
#    aleman = {"Mano": "Hand", "Pie": "Fuss", "Dedo": "Finger", "Cara": "Gesicht"}
#    inglés = {"Pie": "Foot", "Dedo": "Finger", "Mano": "Hand"}
#  se debería devolver res=2

def contar_traducciones_iguales(ingles: dict, aleman: dict) -> int:
    contador:int=0
    for clave,valor in ingles.items():
        if ingles.get(clave)==aleman.get(clave):
            contador += 1
    return contador
contar_traducciones_iguales({"Mano": "Hand", "Pie": "Fuss", "Dedo": "Finger", "Cara": "Gesicht"},{"Pie": "Foot", "Dedo": "Finger", "Mano": "Hand"})
##########################################################################
##########################################################################

# Ejercicio 4
#
# Dada una lista de enteros s, se desea devolver un diccionario cuyas claves sean los valores presentes en s, 
# y sus valores la cantidad de veces que cada uno de esos números aparece en s

#  problema convertir_a_diccionario (lista: seq⟨Z⟩) : dicc⟨Z,Z⟩) {
#    requiere: -
#    asegura: {res tiene como claves los elementos de lista y res[n] = cantidad de veces que aparece n en lista}
#  }

#  Por ejemplo, dada la lista
#  lista = [-1,0,4,100,100,-1,-1]
#  se debería devolver res={-1:3, 0:1, 4:1, 100:2}
#  
# RECORDAR QUE NO IMPORTA EL ORDEN DE LAS CLAVES EN UN DICCIONARIO

def convertir_a_diccionario(lista: list) -> dict:
    diccionario:dict = {}
    for elemento in lista:
        diccionario[elemento]=0
        for i in range(len(lista)):
            if elemento==lista[i]:
                diccionario[elemento]+=1
    return diccionario
        
convertir_a_diccionario([-1,0,4,100,100,-1,-1])
