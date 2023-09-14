# Validacion y verificacion


## Problema, especificacion, algoritmo, programa

Dado un problema a resolver (de la vida real), queremos:

- Poder describir de una manera clara y univoca (especificacion)
    - Esta descripcion deberia poder ser validada contra el problema real

- Poder diseñar una solucion acorde a dicha especificacion
    - Este diseño deberia poder ser verificado con respecto a la especificacion

- Poder implementar un programa acorde a dicho diseño
    - Este programa deberia poder ser verificado con respecto a su especificacion y su diseño
    - Este programa deberia ser la solucion al problema planteado

## Validacion y verificacion
En el contexto de la ingenieria de sowtfare, verificacion y validadcion (V&V) es el proceso de comprobar que un sistema de software cumple con sus especificaciones y que cumple su proposito previsto. Tambien puede ser denominado como el control de la calidad del software

- Validacion
    - Estamos haciendo el producto correcto?
    - El software deberia hacer lo que el usuario requeire de el
- Verificacion
    - Estamos haciendo el producto correctamente?
    - El software deberia realizar lo que su especificaion indica.

## Calidad en Software
Uno de los objetivos principales en el desarrolo de software es obtener productos de alta calidad

-
-
-
-
-
-

## Asegurar vs Controlar la calidad

- la calidad no puede inyectarse al final 
- la calidad del producto depende de tareas realizadas durante todo el proceso
- detectar errores en forma temprana ahorra esfuerzos, timepo, recursos

## Nociones Basicas
- **Falla**: diferencia entre los resultados esperados y reales

- **Defecto**: desperfecto en algun componente del sistemaque origina uno o mas fallos

- **Error**: Equivocacion humana

## Como se hace testing?

Input
- -> Comportamiento esperado
- -> Comportamiento obtenido

esperado = obtenido
- -> == OK
- -> /= FALLA


## Niveles de Test

- Test de Sistema
    - Comprende todo el sistema. Por lo general consituye el test de aceptacion
- Test de Integracion
    - Test orientado a verificar que las partes de un sistema que funcionan bien aisladamente, tambien lo hacen en conjunto
    - Testeamos la interaccion, la comunicacion entre partes
- Test de Unidad    
    - Se realiza sobre una unidad de codigo pequeña


## Test Input, Test Case y test Suite

- **Programa bajo test**: Es el programa que queremos saber si funciona bien o no 
- **Test Input** (o dato de prueba): Es una asignacion concreta de valores a parametros de entrada para ejecutar el programa bajo test
- **Test Case**: Caso de Test (o caso de prueba). Es un programa que ejecuta el programa bajo test usando un dato de test, y chequea (automaticamente) si se cumple la ocndicion de aceptacion sobre la salida del programa bajo test.
- **Test Suite**: Es un conjunto de casos de Test (o conjunto de casos de prueba)

## Hagamos Testing

Cual es el programa de test?
- Es la implementacion de una especificacion

Entre que datos de prueba puedo hacer?
- Aquello que cumplen la **precondicion (requieres)** en la espcificacion

Que condicion de aceptacion tengo que chequear?
- La condicion que me indica la **postcondicion (aseguras)** en la especificacion

Que pasa si el dato de prueba no satisface la precondicion de la especificacon?
- Entonces no tenemos ninguna condicion de aceptacion.

### La mayoria de las veces, el testing exhaustivo no es practico

## Limitaciondes del testing

- Al no ser exhaustivo, el testing NO puede probar  (demostrar) que el software funciona correctamente

"El tetsing puede demostrar la presencia de errores nunca su ausencia" (Dijkstra)

- Una de las mayores dificultades es encontrar un conjunto de tests adecuado:
    - **Suficientemente grande** para abarcar el dominio y maximizar la probabilidad de encontrar errores
    - **Suficiente pequeño** para poder ejecutar el proceso con cada elemento del ocnjunto y minimizar el costo del testing


## Con que datos probar?
- **Intuicion**
- 
- 
-     

## Criterios de **Caja negra** o funcionales

## Criterios de **Caja blanca** o estructurales

## Se puede automatizar el testing

## HUnit
```haskell
import Test.HUnit

-- La funcion que queremos probar
valorAbsoluto :: Int -> Int
valorAbsoluto x | x >= 0 = div 1 x
                | otherwise = -x

-- Las pruebas unitarias
testSuitevalorAbs = test[
    "casoPositivo" ~: (valorAbsoluto 1) ~?= 1 ,
    "casoNegativo" ~: (valorAbsoluto (-5)) ~?= 5
    "casoCero" ~: (valorAbsoluto 0) ~?= 0
]

-- Corre todas las pruebas
correrTest = runTestTT testSuiteValorAbs
```

## Metodo de Particion de Categorias
- Consiste en una t´ecnica que permite generar casos de prueba de una manera metodica.
- Es aplicable a especificaciones formales, semiformales e inclusive, informales.

1. Listar todos los problemas que queremos testear
2. Elegir uno en particular
3. Identificar sus parametros o las relaciones entre ellos que condicionan su comportamiento. Los llamaremos genericamente factores.
4. determinar las caracteristicas relevantes (categorias) de cada factor
5. Determinar elecciones (choices) para cada caracteristica de cada factor
6. Clasificar las elecciones: errores, unicos, restricciones, etc.
7. Armado de casos, combinando las distintas elecciones determinadas para cada categoria, y detallando el resultado esperado en cada caso
8. Volver al paso 2 hasta complementar todas las unidades funcionales.