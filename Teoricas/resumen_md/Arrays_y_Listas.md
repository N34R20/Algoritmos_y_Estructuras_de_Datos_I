# Programacion imperativa: listas y arrays

## Arreglos

secuencia de una cantidad fija de valores del mismo tipo
se declaran con nombre y tipo
    - segun el lenguaje, se debe indicar su tamaño (el cual permanece fijo), en python los arrays tienen longitud variable



## Arreglos y Listas:

- 
- 


## Listas en Pyhton


## Tipos Abstractos de Datos
Un Tipo Abstracto de Datos (TAD) es un modelo que define valores y las operaciones que se pueden realizan sobre ellos.
- Se denomina abstracto ya que la intencion es que quien lo utiliza, no necesita conocer los detalles de la representacion interna o bien el como estan implementadas sus operaciones.
El tipo lista que estuvimos viendo es un TAD:
- Se define como una serie de elementos consecutivos
- Tiene diferentes operaciones asociadas: append, remove, etc
- Desconocemos como se usa/guarda la informacion almacenada dentro del tipo



## Pila

Una pila es una lista de elementos de la cual se puede extraer el ultimo
elemento insertado.
- Tambien se conocen como listas LIFO (Last In - First Out / el ultimo que entra es el primero que sale)
- Operaciones basicas
- apilar: ingresa un elemento a la pila
- desapilar: saca el ultimo elemento insertado
- tope: devuelve (sin sacar) el ultimo elemento insertado
- vacia: retorna verdadero si esta vacıa

## Cola

Una cola es una lista de elementos en donde siempre se insertan nuevos elementos al final de la lista y se extraen elementos desde el inicio de la lista.
- Tambien se conocen como listas FIFO (First In - First Out / el primero que entra es el primero que sale)
- Operaciones basicas
- encolar: ingresa un elemento a la cola
- sacar: saca el primer elemento insertado
- vacia: retorna verdadero si esta vacıa

## Diccionario

Un diccionario es una estructura de datos que permite almacenar y organizar pares clave-valor.
- Las claves deben ser inmutables (como cadenas de texto, n´umeros, etc), mientras que los valores pueden ser de cualquier tipo de dato.
- La clave act´ua como un identificador ´unico para acceder a su valor correspondiente.
- Los diccionarios son mutables, lo que significa que se pueden modificar agregando, eliminando o actualizando elementos.
- No ordenados: Los elementos dentro de un diccionario no tienen un orden espec´ıfico. No se garantiza que se mantenga el orden de inserci´on de los elementos.

diccionario = clave1:valor2, clave2:valor2, clave3:valor3
- Operaciones basicas de un diccionario:
- Agregar un nuevo par Clave-Valor
- Eliminar un elemento
- Modificar el valor de un elemento
- Verificar si existe una clave guardada
- Obtener todas las claves
- Obtener todas los elementos

## Manejo de Archivos

El manejo de archivos, tambien puede pensarse mediante la abstraccion que nos brindan los TADs
- Necesitamos una operacion que nos permita abrir un archivo
- Necesitamos una operacion que nos permita leer sus lineas
- Necesitamos una operacion que nos permita cerrar un archivo


``` Python
# Abrir un archivo en modo lectura
archivo = open(”archivo.txt”, ”r”)

# Leer el contenido del archivo
contenido = archivo.read()
print(contenido)

# Cerrar el archivo
archivo.close()
```