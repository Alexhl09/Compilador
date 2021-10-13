//
//  StackOperator.swift
//  Compilador
//
//  Created by Alejandro Hernández López on 12/10/21.
//

import Foundation

struct OperatorStack {
    var operators : Stack<Operator>
    var types : Stack<TypeSymbol>
    var operands : Stack<String>
    
    init() {
        operators = []
        operands = []
        types = []
    }
    
    mutating func addOperand(operand : String, type : TypeSymbol){
        operands.push(operand)
    }
    
    mutating func addOperator(op : Operator){
        operators.push(op)
    }
}
