%token <NSNumber> NUMBER
%token <String> ID
%token VAR ELSE PRINT IF COMMA EQ DIF LT
GT LBRACE RBRACE DIVIDE TIMES LPAREN RPAREN PLUS MINUS SEMICOLON COLON CTEF CTES MAIN INPUT CONST RTN WHILE FOR LSBRAKE RSBRAKE NEW CPTRG INCPTRG AND OR QM NLL NOT DOT
%token <NSNumber> INT FLOAT DOUBLE CHAR BOOLEAN STR INTEGERCLASS STRINGCLASS
%type <NSNumber> tipoSimple tipoCompuesto tipo
%type <Variable> vars const funcionesVoid funcionesReturn


%global {
    var st : SymbolTable = SymbolTable()
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
                
   programaPrimo : vars programaPrimo {st.insert($1.changeToGlobal(), UInt16(lex.line)) ? print("Inserted var") : error(code: CompilerParser.NO_VAR_INSERTED)}
                    
                | vars {st.insert($1.changeToGlobal(), UInt16(lex.line)) ? print("Inserted var") : error(code: CompilerParser.NO_VAR_INSERTED)};
           
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
   
   vars : VAR ID SEMICOLON  {$$ = Variable(identifier: $2, type: .variable, constant: false)}
         | VAR ID varsPrimaArreglos SEMICOLON {$$ =  Variable(identifier: $2, type: .variable, constant: false, array: true)}
         | VAR ID varAssign SEMICOLON {$$ = Variable(identifier: $2, type: .variable, constant: false)}
         | VAR ID varsPrimaArreglos varAssign SEMICOLON {print("E");$$ =  Variable(identifier: $2, type: .variable, constant: false, array: true)}
         | tipoCompuesto ID varAssign SEMICOLON
         | CONST tipoSimple ID varsPrimaArreglos varsPrima SEMICOLON {$$ = Variable(identifier: $3, type: .variable, typeVar : TypeVar(rawValue: (($2 != nil) ? $2 : NSNumber(integerLiteral: 0)).intValue) ?? .void, constant: true, array: true)}
         | const {$$ = $1};
         
    varAssign : EQ expresion
              | EQ llamada;
         
    varsPrimaArreglos : LSBRAKE CTEI RSBRAKE
                      | LSBRAKE CTEI RSBRAKE varsPrimaArreglos;
    
    varsPrima : EQ LBRACE expresion RBRACE
              | EQ LBRACE expresion COMMA RBRACE;
                  
    funciones : funcionesVoid {st.insert($1, UInt16(lex.line)) ? print("Inserted func") : error(code: CompilerParser.NO_VAR_INSERTED)}
              | funcionesReturn {st.insert($1, UInt16(lex.line)) ? print("Inserted func") : error(code: CompilerParser.NO_VAR_INSERTED)}
              | funcionesVoid funciones {st.insert($1, UInt16(lex.line)) ? print("Inserted func") : error(code: CompilerParser.NO_VAR_INSERTED)}
              | funcionesReturn funciones {st.insert($1, UInt16(lex.line)) ? print("Inserted func") : error(code: CompilerParser.NO_VAR_INSERTED)};
    
    cuerpo : LBRACE cuerpoListaA RBRACE;
    
    cuerpoListaA : cuerpoLista
                   | cuerpoLista cuerpoListaA;
                   
    
    cuerpoLista : vars {st.insert($1, UInt16(lex.line)) ? print("Inserted var") : error(code: CompilerParser.NO_VAR_INSERTED)}
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
   
   funcionesReturn : tipoSimple ID LPAREN params RPAREN LBRACE cuerpoReturn RBRACE {$$ = Variable(identifier: $2, scope: .global, type: .function, typeVar: TypeVar(rawValue: ($1 != nil ? $1 : NSNumber(integerLiteral: 0)).intValue) ?? .void, constant: false)}
   
                | tipoSimple ID LPAREN RPAREN LBRACE cuerpoReturn RBRACE {$$ = Variable(identifier: $2, scope: .global, type: .function, typeVar: TypeVar(rawValue: ($1  != nil ? $1 : NSNumber(integerLiteral: 0)).intValue) ?? .void, constant: false)}
                | error { error(code: CompilerParser.ERROR_SYNTAX) };

   
   tipo : tipoSimple {$$ = $1} | tipoCompuesto {$$ = $1};
   
   const: CONST tipo ID varAssign SEMICOLON {$$ = Variable(identifier: $3, type: .variable, typeVar : TypeVar(rawValue: ($2  != nil ? $2 : NSNumber(integerLiteral: 0)).intValue) ?? .void, constant: true)};
   
   array : arrayA |
            arrayA arrayA;
   
   funcionesVoid : ID LPAREN params RPAREN cuerpo {$$ = Variable(identifier: $1, scope: .global, type: .function, constant: false)}
                    | ID LPAREN RPAREN cuerpo {$$ = Variable(identifier: $1, scope: .global, type: .function, constant: false)};
   
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
