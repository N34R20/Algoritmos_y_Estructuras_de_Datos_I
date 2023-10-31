def ultima_aparicion(s: list, e: int) -> int:
    indices = list()
    for i in range(len(s)):
        if s[i] == e:
            indices.append(i)
        else:
            pass
    return indices[-1]


def elementos_exclusivos(s: list, t: list) -> list:
    lista_de_exclusivos = list()

# lo convierto en tuplas para reconvertirlos en listas asi saco los repetidos que estan en la misma lista 

    s = list(set(s))
    t = list(set(t))

    print(s)
    print(t)

    for i in range(len(s)):
        if s[i] not in t:
            lista_de_exclusivos.append(s[i])
        else: 
            pass    

    for j in range(len(t)):
        if t[j] not in s:
            lista_de_exclusivos.append(t[j])
        else: 
            pass  

    return lista_de_exclusivos  

 

def contar_traducciones_iguales(ingles: dict, aleman: dict) -> int:
    merge_dict = dict()

    for key, value in ingles.items():
        merge_dict[key] = list()
        merge_dict[key].append(value)

    for key, value in aleman.items():
        if key not in merge_dict.keys():
            merge_dict[key] = list()
            merge_dict[key].append(value)
        else:convertir_a_diccionario
            merge_dict[key].append(value)    

    contador = 0

    for value in merge_dict.values():
        if len(value) == 2 and value[0] == value[1]:
            contador += 1
    return contador     


def convertir_a_diccionario(lista: list) -> dict:
    diccionario_nuevo = dict()

    for i in range(len(lista)):
        if lista[i] not in diccionario_nuevo: 
            diccionario_nuevo[lista[i]] = 1
        else:
            diccionario_nuevo[lista[i]] += 1

    return diccionario_nuevo