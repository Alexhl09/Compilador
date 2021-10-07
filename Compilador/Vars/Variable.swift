//
//  Variable.swift
//  Compilador
//
//  Created by Alejandro Hernández López on 05/10/21.
//

import Foundation

class Variable {
    var identifier : String
    var scope : Scope
    var type : TypeWord
    var constant : Bool
    var array : Bool
    var varType : TypeVar
    
    init(identifier: String, scope : Scope = .local, type : TypeWord = .variable, typeVar : TypeVar = .void, constant : Bool = true, array : Bool = false) {
        self.identifier = identifier
        self.scope = scope
        self.type = type
        self.varType = typeVar
        self.constant = constant
        self.array = array
    }
    
    init(){
        self.identifier = randomString(length: 15)
        self.scope = .local
        self.type = .variable
        self.varType = .void
        self.constant = true
        self.array = false
    }
    
    func setIdScopeAndType(identifier: String, scope : Scope, type : TypeWord, typeVar : TypeVar = .void) {
        self.identifier = identifier
        self.scope = scope
        self.type = type
        self.varType = typeVar
    }
    
    func changeToGlobal() -> Variable {
        self.scope = .global
        return self
    }

    
}
