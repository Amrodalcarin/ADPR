/*
 * Classic example grammar, which recognizes simple arithmetic expressions like
 * "2*(3+4)". The parser generated from this grammar then computes their value.
 */

start
  = _ primero:statement _ otras:(PUNTOYCOMA statement ?)* _ {
    var b = [primero];
    for (var i = 0; i < otras.length; i++)
        if (otras[i][1] != null)
            b.push(otras[i][1])
    return b;
  }
  /

statement
  = izq:ID IGUAL der:expression { var result = {type: "=", left: izq, right: der}; return result; }
  / P der:expression { var result = {type: "p", value: der}; return result; }
  / IF _ con:condition _ THEN _ sta:statement { var result = {type: "if", condition: con, statement: sta}; return result}

condition
  = izq:expression _ eq:EQ _ der:expression { return {type: eq, left: izq, right: der}}
  / izq:expression _ eq:NEQ _ der:expression { return {type: eq, left: izq, right: der}}

expression
  = suma

suma
  = izq:resta resto:(MAS resta)* {
      var result = izq;
      for (var i = 0; i < resto.length; i++) {
        result = {
          type: "+",
          left: result,
          right: resto[i][1]
        }
      }
      return result;
    }

resta
  = izq:multiplicacion resto:(MENOS multiplicacion)* {
    var result = izq;
    for (var i = 0; i < resto.length; i++) {
      result = {
        type: "-",
        left: result,
        right: resto[i][1]
      }
    }
    return result;
  }

multiplicacion
  = izq:division resto:(POR division)* {
    var result = izq;
    for (var i = 0; i < resto.length; i++) {
      result = {
        type: "*",
        left: result,
        right: resto[i][1]
      }
    }
    return result;
  }

division
  = izq:factor resto:(ENTRE factor)* {
    var result = izq;
    for (var i = 0; i < resto.length; i++) {
      result = {
        type: "/",
        left: result,
        right: resto[i][1]
      }
    }
    return result;
  }

factor
  = num:NUMERO { return{type: "NUM", value: num }}
  / id:ID { return {type: "ID", value: id} }
  / ABREPAR exp:expression CIERRAPAR { return exp; }

_ = $[ \t\n\r]*

PUNTOYCOMA = _";"_
IGUAL = _"="_ {return "="}
MAS = _"+"_ {return "+"}
MENOS = _"-"_ { return "-"}
POR = _"*"_ {return "*"}
ENTRE = _"/"_ {return "/"}
P = _"p"_ {return "P"}
ABREPAR = _"("_ {return "("}
CIERRAPAR = _")"_ {return ")"}



EQ = eq:[<>=!][=] {return eq;}
NEQ = eq:[<>] {return eq;}
NUMERO = num:[0-9]+ {return num.toString().replace(/,/g,"");}
ID = id:[a-zA-Z0-9_]+ {return id.toString().replace(/,/g,"");}
IF = "if"
THEN = "then"
