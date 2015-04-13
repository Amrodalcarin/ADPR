Práctica: Analizador Descendente Predictivo Recursivo
=====================================================

## Descripción:

Se trata de un analizador léxico descendente predictivo recursivo; es decir, que no requiere backtracking.

Esto sólo es posible para gramáticas de tipo LL(k).

* [Despliegue en Heroku](http://predictiveparser.herokuapp.com/)

## Autores

* [Daniel E. Quijada Díaz](http://danielquijada.github.io/)
* [Mauricio Manuel Cavalleri Sergent](http://mauriciomcavalleris.github.io/)


## Tareas

Añada:

* Extienda y modifique el analizador para que acepte el lenguaje descrito por la gramática EBNF del lenguaje PL/0 que se describe en la entrada de la Wikipedia Recursive descent parser. Procure que el arbol generado refleje la asociatividad correcta para las diferencias y las divisiones. No es necesario que el lenguaje sea exactamente igual pero debería ser parecido. Tener los mismos constructos.
* Use CoffeeScript para escribir el código (fichero views/main.coffee)
* Use slim para las vistas
* Usa Sass para las hojas de estilo
* Despliegue la aplicación en Heroku
* Añada pruebas
