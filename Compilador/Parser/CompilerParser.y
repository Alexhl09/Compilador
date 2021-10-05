%token <NSNumber> NUMBER
%token VAR FLOAT ELSE PRINT INT IF COMMA EQ DIF LT
GT LBRACE RBRACE DIVIDE TIMES LPAREN RPAREN PLUS MINUS SEMICOLON COLON CTEF CTES ID MAIN DOUBLE INPUT CHAR CONST RTN BOOLEAN INTEGERCLASS STRINGCLASS WHILE FOR LSBRAKE RSBRAKE NEW CPTRG INCPTRG AND OR QM NLL NOT DOT STR

%token <NSNumber> CTEI


%errors {
    static let ERROR_UNIMPLEMENTED = (CompilerParser.ERROR_STARTERRORID+1)
}

%nonassoc TYPE FUNCTION
%nonassoc ID
%nonassoc LBRACK
%nonassoc DO OF
%nonassoc THEN
%nonassoc ELSE
%nonassoc ASSIGN
%left OR
%left AND
%nonassoc EQ NEQ LT LE GT GE
%left PLUS MINUS
%left TIMES DIVIDE
%left UMINUS

%start programa

%%
    
    programa : programaPrimo funciones MAIN cuerpo
             | funciones MAIN cuerpo
             | MAIN cuerpo;
                
    programaPrimo : vars programaPrimo
                    | vars;
           
   tipoCompuesto : INTEGERCLASS |
                    STRINGCLASS |
                    ID;
   
   tipoSimple : INT |
                FLOAT |
                DOUBLE |
                CHAR |
                BOOLEAN |
                STR;
   
    vars : VAR ID SEMICOLON
         | VAR ID varsPrimaArreglos SEMICOLON
         | VAR ID varAssign SEMICOLON
         | VAR ID varsPrimaArreglos varAssign SEMICOLON
         | CONST tipoSimple varsPrimaArreglos varsPrima SEMICOLON
         | tipoCompuesto ID varAssign SEMICOLON
         | const;
         
    varAssign : EQ expresion
              | EQ llamada;
         
    varsPrimaArreglos : LSBRAKE CTEI RSBRAKE
                      | LSBRAKE CTEI RSBRAKE varsPrimaArreglos;
    
    varsPrima : EQ LBRACE expresion RBRACE
              | EQ LBRACE expresion COMMA RBRACE;
                  
    funciones : funcionesVoid
              | funcionesReturn
              | funcionesVoid funciones
              | funcionesReturn funciones;
    
    cuerpo : LBRACE cuerpoListaA RBRACE;
    
    cuerpoListaA : cuerpoLista
                   | cuerpoLista cuerpoListaA;
                   
    
    cuerpoLista : vars {print("VAR")}
                | asignar
                | llamada SEMICOLON
                | leer
                | escribir
                | condicion
                | cicloWhile
                | cicloForEach {print("FE")}
                | cicloForIterador
                | error { error(code: CompilerParser.ERROR_SYNTAX) }
                ;
                
                

    params : tipoSimple ID
           | tipoSimple ID COMMA params;
           
   asignar : ID varAssign SEMICOLON;
           
   escribir : PRINT LPAREN escribirA RPAREN SEMICOLON;
   
   escribirA : escribirB
             | escribirB COMMA escribirA;
   
   escribirB : expresion
             | cadena;
             

   llamada : ID LPAREN llamadaA RPAREN
            | ID LPAREN RPAREN;
   
   llamadaA : expresion
            | expresion COMMA llamadaA;
   
   condicion : IF LPAREN expresion RPAREN cuerpoSinVars;
   
   cuerpoSinVars : LBRACE cuerpoSinVarsA RBRACE;
   
   cuerpoSinVarsA : cuerpoSinVarsLista
                  | cuerpoSinVarsLista cuerpoSinVarsA;
                  
   cuerpoSinVarsLista : asignar
                      | llamada
                      | leer
                      | escribir
                      | condicion
                      | cicloWhile
                      | cicloForIterador
                      | cicloForEach
                      | error { error(code: CompilerParser.ERROR_SYNTAX) }
                      ;
                      
   cicloWhile : WHILE LPAREN expresion RPAREN cuerpoSinVars;
   
   range : CPTRG | INCPTRG;
   cicloForEach : FOR LPAREN ID COLON ID RPAREN cuerpoSinVars
   | FOR LPAREN ID COLON factor range factor RPAREN cuerpoSinVars
                    ;

   
   cicloForIterador : FOR LPAREN cicloForIteradorA SEMICOLON expresion RPAREN cuerpoSinVars
                    | FOR LPAREN SEMICOLON expresion RPAREN cuerpoSinVars;
   
   cicloForIteradorA : ID assignCTEI;
   
   assignCTEI : EQ CTEI;
   
   funcionesReturn : tipoSimple ID LPAREN params RPAREN LBRACE cuerpoReturn RBRACE
   | tipoSimple ID LPAREN RPAREN LBRACE cuerpoReturn RBRACE
   | error { error(code: CompilerParser.ERROR_SYNTAX) };

   
   const: CONST constA varAssign |
            CONST constB varAssign;
   
   constA : tipoSimple ID |
            tipoSimple expresion;
   
   constB : tipoCompuesto ID;
   
   array : arrayA |
            arrayA arrayA;
   
   funcionesVoid : ID LPAREN params RPAREN cuerpo
                    | ID LPAREN RPAREN cuerpo;
   
   flujoBloque : asignar
               | llamada
               | escribir
               | condicion
               | cicloWhile
               | cicloForIterador
               | cicloForEach;
               
   cuerpoReturn : cuerpoLista cuerpoReturn |
                RTN expresion SEMICOLON cuerpoReturn |
                RTN expresion SEMICOLON;
   
   expresion : hiperExpression
                | LBRACE arrayFactor RBRACE
                | llamada SEMICOLON;

    arrayFactor : factor COMMA arrayFactor
                | factor;
                
   hiperExpression : superExpression
       | hiperExpression AND hiperExpression
       | hiperExpression OR hiperExpression;
       
   superExpression : megaExpression
       | megaExpression EQ megaExpression
       | megaExpression NEQ megaExpression
       | megaExpression LT megaExpression
       | megaExpression LE megaExpression
       | megaExpression GT megaExpression
       | megaExpression GE megaExpression
       | superExpression QM superExpression COLON superExpression;
       
   megaExpression : termino
       | termino MINUS megaExpression
       | termino PLUS megaExpression;
    
       
   termino : factor
           | factor TIMES megaExpression
           | factor DIVIDE megaExpression;

   factor : CTEI
           | CTEF
           | CTES
           | ID
           | ID LPAREN expresion RPAREN
           | LPAREN megaExpression RPAREN
           | NLL;
           
//   lvalue : ID
//           | ID LSBRAKE expresion RSBRAKE
//           | lvalue DOT ID
//           | lvalue LSBRAKE expresion RSBRAKE
