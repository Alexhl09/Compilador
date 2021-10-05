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
    var varType : TypeVar
    
    init(identifier: String, scope : Scope = .local, type : TypeWord = .keyword, typeVar : TypeVar = .void) {
        self.identifier = identifier
        self.scope = scope
        self.type = type
        self.varType = typeVar
    }
    
    init(){
        self.identifier = randomString(length: 15)
        self.scope = .local
        self.type = .keyword
        self.varType = .void
    }
    
    func setIdScopeAndType(identifier: String, scope : Scope, type : TypeWord, typeVar : TypeVar = .void) {
        self.identifier = identifier
        self.scope = scope
        self.type = type
        self.varType = typeVar
    }
    
}
