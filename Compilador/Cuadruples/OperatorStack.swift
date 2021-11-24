//
//  StackOperator.swift
//  Compilador
//
//  Created by Alejandro Hernández López on 12/10/21.
//

import Foundation

/// Operation stack  is a structure that has 2 properties, operands and operators.
struct OperatorStack {
    /// Operators is a stack of Operators
    var operators : Stack<Operator>
    /// Operators is a stack of a tuple (String, TypeSymbol) String for the address and TypeSymbol for type
    var operands : Stack<(String, TypeSymbol)>
    
    init() {
        operators = []
        operands = []
    }
    
    mutating func addOperand(operand : String, type : TypeSymbol){
        operands.push((operand, type))
    }
    
    mutating func getLastOperand() -> (String, TypeSymbol)? {
        return self.operands.pop()
    }
    
    mutating func addOperator(op : Operator){
        operators.push(op)
    }
    /// This function get the last N Operands and pop them from the operands stack
    mutating func getLastNOperands(_ n : Int) -> [(String, TypeSymbol)] {
        if(n <= operands.size()){
            var lastP : [(String, TypeSymbol)] = []
            for _ in 0..<n{
                lastP.append(self.operands.pop()!)
            }
            return lastP
        }
        return []
    }
  
    
}
