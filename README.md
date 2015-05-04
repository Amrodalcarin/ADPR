Práctica: Analizador Descendente Predictivo Recursivo
=====================================================

## Descripción:

Se trata de un analizador léxico descendente predictivo recursivo; es decir, que no requiere backtracking.

Esto sólo es posible para gramáticas de tipo LL(k).

* [Despliegue en Heroku](http://analizer-dpr.herokuapp.com/)

## Autores:

* [Daniel E. Quijada Díaz](http://danielquijada.github.io/)
* [Mauricio Manuel Cavalleri Sergent](http://mauriciomcavalleris.github.io/)

## Travis:

[![Build Status](https://travis-ci.org/MauricioMCavalleriS/CSV.svg?branch=gh-pages)](https://travis-ci.org/MauricioMCavalleriS/CSV)

## Características:

Se trata de un Analizador del lenguaje PL0, con ciertas mejoras:

* Acepta punto y coma al final de una sentencia aunque no hayan más.
* Acepta la cadena vacía (después de todo, puede considerarse correcto, aunque no haya nada).
* Escoge de forma adecuada el órden a la hora de agrupar distintas operaciones aritméticas (en concreto las restas y divisiones estaban incorrectas).
* Ignora las líneas en blanco, que causaban error en la versión original.

## Tests:

En la página de la aplicación, hay un botón de pruebas, realizadas con Mocha y Chai.
