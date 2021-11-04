%token <NSNumber> NUMBER
%token <NSString> ID CTES CTEC CPTRG INCPTRG
%token VAR ELSE PRINT IF COMMA EQ DIF LT
GT LBRACE RBRACE DIVIDE TIMES LPAREN RPAREN PLUS MINUS SEMICOLON COLON MAIN INPUT CONST RTN WHILE FOR LSBRAKE RSBRAKE NEW AND OR QM NLL NOT DOT FUNC PGR
%token <NSNumber> INT FLOAT DOUBLE CHAR BOOLEAN STR INTEGERCLASS STRINGCLASS F T CTEI CTEF
%type <NSNumber> tipoSimple tipoCompuesto tipo booleanValue
%type <Symbol> vars const funcionesVoid funcionesReturn
%type <NSString> range declareVarCiclo idFunc idFuncReturn
%type <NSMutableArray> params


%global {
    var semantic : SemanticHandler = SemanticHandler()
    var params : [Symbol] = []
    var arguments : [(String, TypeSymbol)] = []
}

%errors {
    static let ERROR_UNIMPLEMENTED = (CompilerParser.ERROR_STARTERRORID+1)
    static let VAR_ALREADY_DECLARED = (CompilerParser.ERROR_STARTERRORID+2)
    static let TYPE_MISMATCH = (CompilerParser.ERROR_STARTERRORID+3)
    static let UNDECLARED_VAR = (CompilerParser.ERROR_STARTERRORID+4)
}

%{
    extension CompilerParser : SemanticErrorDelegate {}
%}

%init {
    semantic.delegate = self
}

%local {
    func sendVariableRepeated(id : String){
        error(code: CompilerParser.VAR_ALREADY_DECLARED, data: ["varRep": id as AnyObject])
    }

    func sendInvalidOperationBetween(t1 : TypeSymbol, t2: TypeSymbol){
        error(code: CompilerParser.TYPE_MISMATCH, data: ["t1": NSNumber(value: t1.rawValue) as AnyObject, "t2": NSNumber(value: t2.rawValue) as AnyObject])
    }

    func sendUndeclareVariable(id: NSString) {
        error(code: CompilerParser.UNDECLARED_VAR, data: ["undeclaredVar": id as NSString])
    }

    func sendTypeMismatch() {
        error(code: CompilerParser.TYPE_MISMATCH, data: [:])
    }
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
    
    programa : programaPrimo funciones startMain startNode RPAREN cuerpo {semantic.endFunction()}
            | funciones MAIN startNode RPAREN cuerpo {semantic.endFunction()}
            | MAIN startNode RPAREN cuerpo {semantic.endFunction()};
             
    startMain : MAIN {
        semantic.insertSymbolToST("main", true, false, .void, .method)
        semantic.foundMain()
    };
             
    programaPrimo : vars programaPrimo
             | vars ;
           
   tipoCompuesto : INTEGERCLASS {$$ = $1} |
                   STRINGCLASS {$$ = $1} |
                   ID {$$ = NSNumber(integerLiteral: TypeSymbol.ID.rawValue)} ;

   tipoSimple : INT {$$ = $1} |
                FLOAT {$$ = $1}  |
                DOUBLE {$$ = $1}  |
                CHAR {$$ = $1} |
                BOOLEAN {$$ = $1}  |
                STR {$$ = $1}  |
                VOID {$$ = $1} ;
   
   vars : VAR ID SEMICOLON
        {
            semantic.insertSymbolToST($2, false, false)
        }
   | VAR ID varsPrimaArreglos SEMICOLON
        {
            semantic.insertSymbolToST($2, false, true)
        }
   | VAR ID varAssign SEMICOLON
        {
            semantic.insertSymbolToST($2, false, false);
            semantic.saveValueVariable(id : $2 as String)
        }
   | VAR ID varsPrimaArreglos varAssign SEMICOLON
        {
            semantic.insertSymbolToST($2, false, true);
        }
   | tipoCompuesto ID varAssign SEMICOLON
        {
            semantic.insertSymbolToST($2, false, false, TypeSymbol.init(rawValue: $1.intValue) ?? .void);
            semantic.saveValueVariable(id : $2 as String)
        }
   | CONST tipoSimple ID varsPrimaArreglos varsPrima varAssign SEMICOLON
        {
            semantic.insertSymbolToST($3, true, true, TypeSymbol.init(rawValue: $2.intValue) ?? .void);
        }
   | const;
            
    varAssign : varEqAssign expresion ;
    
    varEqAssign : EQ {semantic.addOperator(op: .assign)};
    
    varsPrimaArreglos : LSBRAKE CTEI RSBRAKE
                      | LSBRAKE CTEI RSBRAKE varsPrimaArreglos;
    
    varsPrima : EQ LBRACE expresion RBRACE
              | EQ LBRACE expresion COMMA RBRACE;
                  
    funciones : funcionesVoid
                | funcionesReturn
                | funcionesVoid funciones
                | funcionesReturn funciones;
    
    cuerpo : LBRACE cuerpoListaA popNode;
    
    cuerpoListaA : cuerpoLista
                | cuerpoLista cuerpoListaA {$$ = $1 as AnyObject?};
                   
    
    cuerpoLista : vars
                | asignar SEMICOLON
                | llamada SEMICOLON
                | leer SEMICOLON
                | escribir SEMICOLON
                | condicion
                | cicloWhile
                | cicloForEach
                | cicloForIterador
                | ternary SEMICOLON
                | error { error(code: CompilerParser.ERROR_SYNTAX) }
                ;
                
                

   params : tipoSimple ID
            {
                let type = TypeSymbol.init(rawValue: $1.intValue) ?? .void
                semantic.insertSymbolToST($2, true, false, type);
                let symbol = semantic.returnSymbolByID($2 as String)
                params.append(symbol)
            }
            | tipoSimple ID COMMA params
            {
                let type = TypeSymbol.init(rawValue: $1.intValue) ?? .void
                semantic.insertSymbolToST($2, true, false, type);
                let symbol = semantic.returnSymbolByID($2 as String)
                params.append(symbol)
            }
            ;
           
    asignar : ID varAssign {semantic.saveValueVariable(id : $1 as String)};
           
           
  escribir : PRINT LPAREN escribirA RPAREN {semantic.addPrint()};
  
  printOper : PRINT {semantic.addOperator(op: Operator.print)};
   
   escribirA : escribirB
             | escribirB COMMA escribirA;
   
   escribirB : expresion
             | cadena;
             

  llamada : ID LPAREN llamadaA RPAREN {
                semantic.functionCall($1, args: arguments);
                arguments.removeAll()
             }
        | ID LPAREN RPAREN {
            semantic.functionCall($1, args: [])
        };
   
   llamadaA : expresion {
                let arg = (semantic.operationStack.getLastOperand() ?? ("",.void))
                arguments.append(arg)
            }
            | expresion COMMA llamadaA {
                let arg = (semantic.operationStack.getLastOperand() ?? ("",.void))
                arguments.append(arg)
            };
   
   condicion : condicionA cuerpo { semantic.endCondicional() }
             | condicionA cuerpo startNodeElse cuerpo { semantic.endCondicional() };
             
    startNodeElse : ELSE {
        semantic.startScope()
        semantic.addElse()
    };
   
   condicionA : IF startNode expresion RPAREN {
       semantic.addCondicional()
   };
                      
   cicloWhile : cicloWhileP1 startNode expresion cicloWhileP2 cuerpo {
       semantic.whileP3()
   };
   
   cicloWhileP1 : WHILE {
       semantic.whileP1()
   };
   
   cicloWhileP2 : RPAREN {
       semantic.whileP2();
   };
   
   startNode : LPAREN {
       semantic.startScope()
   }
   ;
   
   popNode : RBRACE {
       semantic.endScope()
   }
   ;
   
   range : CPTRG {$$ = $1} | INCPTRG {$$ = $1};
   
   cicloForEach : forEach popNode;
   
   forEach : FOR startNode VAR ID COLON ID RPAREN cuerpo
            | FOR startNode declareVarCiclo RPAREN endForEach {semantic.endForEachRange(id: $3)}
            ;
                
   endForEach : LBRACE cuerpoListaA;

   declareVarCiclo : INT ID COLON factor range factor
        {
            semantic.addForEachRange(range: $5 as String, id : $2 as String);
            $$ = $2;
        }
        ;
   
   cicloForIterador : FOR startNode cicloForIteradorP1 cicloForIteradorA cicloForIteradorP2 asignar RPAREN cuerpo {semantic.whileP3()}
                    | FOR startNode cicloForIteradorP2 asignar RPAREN cuerpo {semantic.whileP3()};
                    
   cicloForIteradorP1: vars {
       semantic.whileP1()
   };
   
   cicloForIteradorP2: SEMICOLON {
       semantic.whileP2()
   };
   
   cicloForIteradorA : hiperExpression {};
   ()
   assignCTEI : EQ CTEI;
   
   funcionesReturn : FUNC idFuncReturn startNode params RPAREN LBRACE cuerpoReturn popNode
       {
           semantic.returnSymbolByID($2 as String).params = params.reversed()
           semantic.endFunction()
           self.params.removeAll()
       }
   | FUNC idFuncReturn startNode RPAREN LBRACE cuerpoReturn popNode
       {
           
           semantic.endFunction()
       }
   | error { error(code: CompilerParser.ERROR_SYNTAX) };

   
   tipo : tipoSimple {$$ = $1} | tipoCompuesto {$$ = $1};
   
   const: CONST tipo ID varAssign SEMICOLON
        {
            semantic.insertSymbolToST($3, true, false, TypeSymbol.init(rawValue: $2.intValue) ?? .void);
            semantic.saveValueVariable(id : $3 as String)
        };
   
   array : arrayA |
            arrayA arrayA;
   
   funcionesVoid : FUNC idFunc startNode params RPAREN cuerpo
       {
           semantic.insertSymbolToST($2, true, false, .void, .method, params: self.params)
           semantic.endFunction()
           self.params.removeAll()
       }
    | FUNC idFunc startNode RPAREN cuerpo
        {
            semantic.insertSymbolToST($2, true, false, .void, .method)
            semantic.endFunction()
        };
        
    idFunc : ID{semantic.startFunction($1); $$ = $1};
    
    idFuncReturn : tipoSimple ID{
        semantic.insertSymbolToST($2, true, false, TypeSymbol.init(rawValue: $1.intValue) ?? .void, .method)
        ; semantic.startFunction($2); $$ = $2};
   
   flujoBloque : asignar SEMICOLON
               | llamada
               | escribir
               | condicion
               | cicloWhile
               | cicloForIterador
               | cicloForEach
               | factor
               | ternary;
               
   cuerpoReturn : cuerpoLista cuerpoReturn |
   returnCuerpo SEMICOLON cuerpoReturn |
   returnCuerpo SEMICOLON;
                
    returnCuerpo : RTN expresion {semantic.returnFunctions()};
   
   expresion : hiperExpression
                | llamada
                | LBRACE arrayFactor RBRACE;

    arrayFactor : factor COMMA arrayFactor
                | factor;
                
hiperExpression : superExpression
        | hiperExpression booleanOperators hiperExpression {semantic.addQuadruple()};
   
   booleanOperators : AND {semantic.addOperator(op: Operator.and)}
        | OR {semantic.addOperator(op: Operator.or)}
        ;
   
   superExpression : megaExpression
        | megaExpression comparisonOperators megaExpression {semantic.addQuadruple()}
        | ternary;
       
    ternary : superExpression ternaryTrue ternaryBloque ternaryFalse ternaryBloque {semantic.endTernaryOperator()};
       
    ternaryTrue : QM {semantic.addQuadrupleWithTernaryOperator()};
    
    ternaryFalse : COLON {semantic.colonTernaryOperator()};
       
    ternaryBloque : flujoBloque
                    | expresion;
       
comparisonOperators : EQ EQ {semantic.addOperator(op: Operator.equal)}
        | NEQ {semantic.addOperator(op: Operator.different)}
        | LT {semantic.addOperator(op: Operator.lessThan)}
        | LE {semantic.addOperator(op: Operator.lessOrEqualThan)}
        | GT {semantic.addOperator(op: Operator.greaterThan)}
        | GE {semantic.addOperator(op: Operator.greaterOrEqualThan)}
        ;
       
megaExpression : termino
                | termino o1 megaExpression {semantic.addQuadruple()};

o1 : PLUS {semantic.addOperator(op: Operator.sum)}
        | MINUS {semantic.addOperator(op:Operator.minus)};
    
    
       
termino : factor
        | factor o2 megaExpression {semantic.addQuadruple()};
        
    o2 : TIMES {semantic.addOperator(op: Operator.multiply)}
        | DIVIDE {semantic.addOperator(op: Operator.division)};

factor : CTEI
        {
            semantic.addConstantInteger($1)
        }
       | CTEF
       {
           semantic.addConstantFloat($1)
       }
       | booleanValue
       {
           semantic.addConstantBool($1)
       }
       | CTES
       {
           semantic.addConstantString($1)
       }
       | ID
       {
           semantic.addIDAsQuadruple($1)
       }
       | CTEC
       {
           semantic.addConstantChar($1)
       }
       | ID LPAREN expresion RPAREN
       | LPAREN megaExpression RPAREN
       | NLL;
       
       
booleanValue : T {$$ = $1}| F {$$ = $1};


leer : INPUT LPAREN ID RPAREN
    {
        semantic.readID($3)
    }
;
           
//   lvalue : ID
//           | ID LSBRAKE expresion RSBRAKE
//           | lvalue DOT ID
//           | lvalue LSBRAKE expresion RSBRAKE

