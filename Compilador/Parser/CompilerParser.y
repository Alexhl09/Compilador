%token <NSNumber> NUMBER
%token IDENTIFIER PGR VAR INT FLOAT ELSE PRINT INT FLOAT IF COMMA EQ DIF LT
GT LBRACE RBRACE DIVIDE TIMES LPAREN RPAREN PLUS MINUS SEMICOLON COLON CTEF CTES ID MAIN DOUBLE INPUT CHAR CONST RTN BOOLEAN INTEGERCLASS STRINGCLASS WHILE FOR LSBRAKE RSBRAKE LCURLY SCURLY NEW CPTRG INCPTRG AND OR QM NLL NOT

%token <NSNumber> CTEI


%start programa

%%
    
    programa : programaPrimo SEMICOLON funciones MAIN cuerpo
             | funciones MAIN cuerpo;
                
    programaPrimo : vars SEMICOLON programaPrimo;
                  
    vars : VAR ID
         | VAR ID varsPrimaArreglos
         | CONST tipoSimple varsPrimaArreglos EQ varsPrima
         | tipoCompuesto ID EQ expresion;
         
    varsPrimaArreglos : LBRACE CTEI RBRACE
                      | LBRACE CTEI RBRACE varsPrimaArreglos;
    
    varsPrima : LBRACE expresion RBRACE
              | LBRACE expresion COMMA RBRACE;
                  
    funciones : funcionesVoid
              | funcionesReturn;
    
    cuerpo : LBRACE cuerpoLista RBRACE;
    
    cuerpoLista : vars
                | asignar
                | llamada
                | leer
                | escribir
                | condicion
                | cicloWhile
                | cicloForIterador;

    params : tipoSimple ID
           | tipoSimple ID COMMA params;
           
   asignar : ID EQ expresion SEMICOLON
           | ID EQ expresion llamada;

   escribir : PRINT LPAREN escribirA RPAREN SEMICOLON;
   
   escribirA : escribirB
             | escribirB COMMA escribirA;
   
   escribirB : expresion
             | cadena;
             

   llamada : ID LSBRAKE llamadaA RSBRAKE;
   
   llamadaA : expresion
            | expresion comma llamadaA;
            
   tipoCompuesto : INT | STRINGCLASS | ID;
   
   tipoSimple : INT | FLOAT | DOUBLE | CHAR | BOOLEAN | STRINGCLASS;
   
   condicion : IF LPAREN expresion RPAREN cuerpoSinVars;
   
   cuerpoSinVars : LSBRAKE cuerpoSinVarsA RSBRAKE;
   
   cuerpoSinVarsA : cuerpoSinVarsLista
                  | cuerpoSinVarsLista cuerpoSinVarsA;
                  
   cuerpoSinVarsLista : asignar
                      | llamada
                      | leer
                      | escribir
                      | condicion
                      | cicloWhile
                      | cicloForIterador
                      | cicloForEach;
                      
   cicloWhile : WHILE LPAREN expresion RPAREN cuerpoSinVars;
   
   cicloForEach : FOR LPAREN ID COLON ID RPAREN cuerpoSinVars;
   
   cicloForIterador : FOR LPAREN cicloForIteradorA SEMICOLON expresion RPAREN cuerpoSinVars
                    | FOR LPAREN SEMICOLON expresion RPAREN cuerpoSinVars;
   
   cicloForIteradorA : ID EQ CTEI;
   
   funcionesReturn : tipoSimple ID LPAREN params RPAREN cuerpoReturn;
   
   cuerpoReturn : LSBRAKE cuerpoReturnA RTN expresion RSBRAKE;
   
   cuerpoReturnA : cuerpoReturnB | cuerpoReturnB cuerpoReturnA;
   
   cuerpoReturnA : vars SEMICOLON | flujoBloque;
   
   csv: LSBRAKE csvA RSBRAKE;

   csvA : flujoBloque | flujoBloque csvA;
   
   const: CONST constA expresion | CONST constB expresion;
   
   constA : tipoSimple ID EQ | tipoSimple expresion EQ;
   
   constB : tipoCompuesto ID EQ;
   
   array : arrayA | arrayA arrayA;
   
   funcionesVoid : ID LPAREN params RPAREN cuerpo;
   
   flujoBloque : asignar
               | llamada
               | escribir
               | condicion
               | cicloWhile
               | cicloForIterador
               | cicloForEach;
               
   cV : cVA | flujoBloque;
   
   cVA : vars SEMICOLON | vars SEMICOLON cVA;
   
   cVR : cVA | flujoBloque | RTN SEMICOLON;
   
   
