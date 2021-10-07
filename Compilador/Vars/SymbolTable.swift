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
                |   Identifier's Name: \(myVar.identifier)
                |   Type: \(myVar.type)
                |   Scope: \(myVar.scope)
                |   Line Number: \(lineNumber)
                |
                --------------------------------------
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
    
    func insert(_ variable : Variable,_ lineaNum : UInt16) -> Bool {
        let index = variable.identifier.hashValue
        let p : NodeSymbolTable = NodeSymbolTable(variable: variable, lineNumber: lineaNum)
        if(self.head[index] == nil){
            head[index] = p
            print("Inserted \(variable.identifier)")
            return true
        }else{
            var start : NodeSymbolTable? = self.head[index]
            while(start?.nextNode != nil){
                start = start?.nextNode
            }
            
            start?.nextNode = p
            print("Inserted \(variable.identifier)")
            return true
        }
    }
}

extension SymbolTable : CustomStringConvertible {

    var description: String {
        return self.head.reduce("") { res, next in
            var a = ""
            if(next.value.nextNode != nil){
               
                var temp : NodeSymbolTable? = next.value.nextNode!
                while(temp != nil){
                    a += temp!.description
                    temp = temp!.nextNode
                }
            }
            
            return res + "\n" + next.value.description + (a != "" ? "\n\t| \(a) |" : a)
        }
    }
}
