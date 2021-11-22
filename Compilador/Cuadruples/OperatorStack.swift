//
//  StackOperator.swift
//  Compilador
//
//  Created by Alejandro Hernández López on 12/10/21.
//

import Foundation

struct OperatorStack {
    var operators : Stack<Operator>
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
    
    mutating func getLastNOperands(_ n : Int) -> [(String, TypeSymbol)] {
        if(n <= operands.size()){
            var lastP : [(String, TypeSymbol)] = []
            for i in 0..<n{
                lastP.append(self.operands.pop()!)
            }
            return lastP
        }
        return []
    }
  
    
}
