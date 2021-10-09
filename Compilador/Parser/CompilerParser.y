%token <NSNumber> NUMBER
%token <NSString> ID CTES
%token VAR ELSE PRINT IF COMMA EQ DIF LT
GT LBRACE RBRACE DIVIDE TIMES LPAREN RPAREN PLUS MINUS SEMICOLON COLON CTEF MAIN INPUT CONST RTN WHILE FOR LSBRAKE RSBRAKE NEW CPTRG INCPTRG AND OR QM NLL NOT DOT FUNC PGR
%token <NSNumber> INT FLOAT DOUBLE CHAR BOOLEAN STR INTEGERCLASS STRINGCLASS
%type <NSNumber> tipoSimple tipoCompuesto tipo
%type <Symbol> vars const funcionesVoid funcionesReturn


%global {
    static var st : SymbolTable = SymbolTable()
}

%errors {
    static let ERROR_UNIMPLEMENTED = (CompilerParser.ERROR_STARTERRORID+1)
    static let NO_VAR_INSERTED = (CompilerParser.ERROR_STARTERRORID+2)
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
             | vars ;
           
   tipoCompuesto : INTEGERCLASS {$$ = $1} |
                   STRINGCLASS {$$ = $1} |
                   ID {$$ = NSNumber(integerLiteral: TypeVar.ID.rawValue)} ;

   tipoSimple : INT {$$ = $1} |
                FLOAT {$$ = $1}  |
                DOUBLE {$$ = $1}  |
                CHAR {$$ = $1} |
                BOOLEAN {$$ = $1}  |
                STR {$$ = $1}  |
                VOID {$$ = $1} ;
   
   vars : VAR ID SEMICOLON  {CompilerParser.st.insertInHashTable(Symbol(lex.line, $2, .field, .void, false, false, false))}
   | VAR ID varsPrimaArreglos SEMICOLON {CompilerParser.st.insertInHashTable(Symbol(lex.line, $2, .field, .void, false, true, false))}
   | VAR ID varAssign SEMICOLON { CompilerParser.st.insertInHashTable(Symbol(lex.line, $2, .field, .void, false, false, true))}
   | VAR ID varsPrimaArreglos varAssign SEMICOLON {CompilerParser.st.insertInHashTable(Symbol(lex.line, $2, .field, .void, false, true, true))}
   | tipoCompuesto ID varAssign SEMICOLON {CompilerParser.st.insertInHashTable(Symbol(lex.line, $2, .field, TypeSymbol.init(rawValue: $1.intValue) ?? .void, true, false, true))}
   | CONST tipoSimple ID varsPrimaArreglos varsPrima SEMICOLON {CompilerParser.st.insertInHashTable(Symbol(lex.line, $3, .field, TypeSymbol.init(rawValue: $2.intValue) ?? .void, true, false, true))}
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
                | cuerpoLista cuerpoListaA {$$ = $1 as AnyObject?};
                   
    
    cuerpoLista : vars
                | asignar
                | llamada SEMICOLON
                | leer
                | escribir
                | condicion
                | cicloWhile
                | cicloForEach
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
   
   condicion : condicionA cuerpoSinVars
             | condicionA ELSE cuerpoSinVars;
   
   condicionA : IF LPAREN expresion RPAREN;
   
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
   
   funcionesReturn : FUNC tipoSimple ID LPAREN params RPAREN LBRACE cuerpoReturn RBRACE {CompilerParser.st.insertInHashTable(Symbol(lex.line, $3, .method, TypeSymbol.init(rawValue: $2.intValue) ?? .void, true, false, false))}
   
   | FUNC tipoSimple ID LPAREN RPAREN LBRACE cuerpoReturn RBRACE {CompilerParser.st.insertInHashTable(Symbol(lex.line, $3, .method, TypeSymbol.init(rawValue: $2.intValue) ?? .void, true, false, false))}
                | error { error(code: CompilerParser.ERROR_SYNTAX) };

   
   tipo : tipoSimple {$$ = $1} | tipoCompuesto {$$ = $1};
   
   const: CONST tipo ID varAssign SEMICOLON {CompilerParser.st.insertInHashTable(Symbol(lex.line, $3, .field, TypeSymbol.init(rawValue: $2.intValue) ?? .void, true, false, true))};
   
   array : arrayA |
            arrayA arrayA;
   
   funcionesVoid : FUNC ID LPAREN params RPAREN cuerpo {CompilerParser.st.insertInHashTable(Symbol(lex.line, $2, .method, .void, true, false, false))}
                 | FUNC ID LPAREN RPAREN cuerpo {CompilerParser.st.insertInHashTable(Symbol(lex.line, $2, .method, .void, true, false, false))};
   
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
