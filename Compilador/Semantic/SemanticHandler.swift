//
//  SemanticHandler.swift
//  Compilador
//
//  Created by Alejandro Hernández López on 12/10/21.
//

import Foundation

protocol SemanticErrorDelegate {
    func sendVariableRepeated(id : String)
    func sendInvalidOperationBetween(t1 : TypeSymbol, t2: TypeSymbol)
    func sendUndeclareVariable(id: NSString)
}

class SemanticHandler {
    var delegate : SemanticErrorDelegate? = nil
    var quadruples : [Quadruple] = []
    var symbolTable : SymbolTable = SymbolTable()
    var jumpStack : Stack<Quadruple> = []
    var operationStack : OperatorStack = OperatorStack()
    var numTemp : Int = 0
    var numConstantes : Int = 0
    var memory : VirtualMemorySemantic = VirtualMemorySemantic()
    
    func insertSymbolToST(_ id : NSString, _ constant: Bool, _ array : Bool, _ type: TypeSymbol = .void, _ kind : Kind = .field){
        let s = Symbol(lex.line, id, kind, type, constant, array, false)

        
        if (!symbolTable.insertInHashTable(s)){
            delegate?.sendVariableRepeated(id: id as String)
        }else{
            if(symbolTable.onlyOneNode()){
                s.address = newGlobalVariable(s: type)
            }
        }
        
    }
    
    func startScope(){
        symbolTable.newNode()
    }
    
    func endScope(){
        symbolTable.pop()
    }
    
    func addOperator(op : Operator){
        operationStack.operators.push(op)
    }
    
    func addOperand(symbol : Symbol){
        operationStack.operands.push(symbol.identifier)
        operationStack.types.push(symbol.type)
    }
    
    func addQuadruple() {
        // Logic for 2 operands
        if(operationStack.operands.size() >= 2 && operationStack.operators.size() >= 1){
            
            let op : Operator = operationStack.operators.pop()!

            let rightOperand : String = operationStack.operands.pop() ?? ""
            let rightType : TypeSymbol = operationStack.types.pop() ?? .void
    
            
            let leftOperand  : String = operationStack.operands.pop() ?? ""
            let leftType : TypeSymbol = operationStack.types.pop() ?? .void
    
            
            guard let resultType = semanticCube[SemCubeKey(op1: rightType, op2: leftType, o: op)] else {
                print("ERROR")
                delegate?.sendInvalidOperationBetween(t1: leftType, t2: rightType)
                return
            }
    
            let symbolTemporal : Symbol = Symbol(0, "temp\(numTemp)" as NSString, .field, resultType, true, false, true)
            numTemp = numTemp + 1
           
            self.quadruples.append(Quadruple(argument1: leftOperand , argument2: rightOperand, op: op, result: symbolTemporal.identifier))
            self.addOperand(symbol: symbolTemporal)
        }
    }
    
    func newGlobalVariable(s : TypeSymbol) -> Int {
        return memory.newGlobalAddress(type: s)
    }
    
    func addConstantInteger(_ number :NSNumber){
        self.addOperand(symbol: Symbol(lex.line, "const\(numConstantes)" as NSString, .field, .integer, true, false, true))
        numConstantes = numConstantes + 1
    }
    
    func addConstantFloat(_ number : NSNumber){
        self.addOperand(symbol: Symbol(lex.line, "const\(numConstantes)" as NSString, .field, .float, true, false, true))
        numConstantes = numConstantes + 1
    }
    
    func addConstantString(_ string : NSString){
        self.addOperand(symbol: Symbol(lex.line, "const\(numConstantes)" as NSString, .field, .string, true, false, true))
        numConstantes = numConstantes + 1
    }
    
    func addConstantBool(_ number : NSNumber){
        self.addOperand(symbol: Symbol(lex.line, "const\(numConstantes)" as NSString, .field, .boolean, true, false, true))
        numConstantes = numConstantes + 1
    }
    
    func addIDAsQuadruple(_ id : NSString){
        let identifier : String = String(id)
        guard let operand = self.symbolTable.lookup(identifier) else {
            delegate?.sendUndeclareVariable(id: id)
            return}
        self.addOperand(symbol: operand)
    }
    
    func addQuadrupleWithTernaryOperator(){
        print("OperadorTernario")
    }
    
    func saveValueVariable(id: String){
        guard let symbol = symbolTable.lookup(id) else {print("No se puede inicializar var, no encontrada"); return}
        // Add to operands stack
        
        if(!symbol.assigned){
            symbol.assigned = true
            symbol.type = operationStack.types.peek() ?? .void
        }
        
        self.addOperand(symbol: symbol)
        self.addOperator(op: .assign)
        
        
        let op : Operator = operationStack.operators.pop()!

        let rightOperand : String = operationStack.operands.pop() ?? ""
        let rightType : TypeSymbol = operationStack.types.pop() ?? .void

        
        let leftOperand  : String = operationStack.operands.pop() ?? ""
        let leftType : TypeSymbol = operationStack.types.pop() ?? .void
        
        guard let resultType = semanticCube[SemCubeKey(op1: rightType, op2: leftType, o: op)] else {
            print("ERROR")
            return
        }
        self.quadruples.append(Quadruple(argument1: leftOperand , argument2: nil, op: op, result: rightOperand))
    }
}
