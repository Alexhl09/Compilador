//
//  SymbolTable.swift
//  Compilador
//
//  Created by Alejandro Hernández López on 05/10/21.
//

import Foundation

class NodeSymbolTable {
    var myVar : Variable
    var lineNumber : UInt16
    var nextNode : NodeSymbolTable?
    
    init(variable : Variable = Variable(), lineNumber : UInt16 = 0, nextNode : NodeSymbolTable? = nil) {
        self.myVar = variable
        self.lineNumber = lineNumber
        self.nextNode = nextNode
    }
    
}

extension NodeSymbolTable : CustomStringConvertible {

    var description: String {
           return """
                Identifier's Name: \(myVar.identifier)
                    \nType: \(myVar.type)
                    \nScope: \(myVar.scope)
                    \nLine Number: \(lineNumber)
                """
    }
}

class SymbolTable{
    var head : [Int : NodeSymbolTable] = [:]
    
    init(){
        head = [:]
    }
    
    func modify(id : String, s : Scope, t : TypeWord, l : UInt16) -> Bool {
        let index = id.hashValue
        var start: NodeSymbolTable? = self.head[index]
        
        if(start == nil){
            print("-1")
            return false
        }
        
        while(start != nil){
            if(start!.myVar.identifier == id){
                start!.myVar.setIdScopeAndType(identifier: id, scope: s, type: t)
                start!.lineNumber = l
                return true
            }
            start = start!.nextNode ?? nil
        }
        return false
    }
    
    func deleteRecord(id : String) -> Bool {
        let index = id.hashValue
        var temp: NodeSymbolTable? = self.head[index]
        var par: NodeSymbolTable? = self.head[index]
        
        // No hay id en un valor dentro del array
        if(temp == nil){
            return false
        }
        
        // solo un identificador esta presente
        if(temp!.myVar.identifier == id && temp!.nextNode == nil){
            temp!.nextNode = nil
            temp = nil
            return true
        }
        
        while(temp!.myVar.identifier != id && temp!.nextNode != nil){
            par = temp
            temp = temp!.nextNode
        }
        
        if(temp!.myVar.identifier == id && temp!.nextNode != nil){
            par?.nextNode = temp?.nextNode
            temp?.nextNode = nil
            temp = nil
            return true
        }else{
            // Eliminar al final
            par?.nextNode = nil
            temp?.nextNode = nil
            temp = nil
            return true
        }
        return false
    }
    
    func find(id : String) -> String{
        let index = id.hashValue
        var start : NodeSymbolTable? = self.head[index]
        
        if(start == nil){
            return "-1"
        }
        
        while(start != nil){
            if(start!.myVar.identifier == id){
                print(start!.myVar)
                return start!.myVar.scope.rawValue
            }
            
            start = start!.nextNode
        }
        
        return "-1"
    }
    
    func insert(id: String, scope: Scope, type: TypeWord,typeVar : TypeVar = .void, lineaNum : UInt16) -> Bool {
        let index = id.hashValue
        let p : NodeSymbolTable = NodeSymbolTable(variable: Variable(identifier:id, scope: scope, type: type, typeVar: typeVar), lineNumber: lineaNum)
        if(self.head[index] == nil){
            head[index] = p
            print("Inserted \(id)")
            return true
        }else{
            var start : NodeSymbolTable? = self.head[index]
            while(start?.nextNode != nil){
                start = start?.nextNode
            }
            
            start?.nextNode = p
            print("Inserted \(id)")
            return true
        }
    }
}
