//
//  SymbolTable.swift
//  Compilador
//
//  Created by Alejandro Hernández López on 05/10/21.
//

import Foundation


public class Symbol {
    var lineNumber : UInt16
    var identifier: String
    var address: Int
    var kind : Kind
    var type: TypeSymbol
    var constant : Bool
    var array : Bool
    var assigned : Bool

    
    init(_ lineNumber : Int, _ identifier : NSString, _ kind : Kind, _ type : TypeSymbol, _ constant: Bool, _ array : Bool, _ assigned : Bool, address: Int = 0){
        self.lineNumber = UInt16(lineNumber)
        self.identifier = String(identifier)
        self.kind = kind
        self.type = type
        self.constant = constant
        self.array = array
        self.assigned = assigned
        self.address = address
    }
    
    init(){
        self.lineNumber = 0
        self.identifier = ""
        self.kind = .field
        self.type = .void
        self.constant = false
        self.array = false
        self.assigned = false
        self.address = -1
    }
    
}

extension Symbol : CustomStringConvertible {

    public var description: String {
       return
    """
    \n
       |===================================
       |     Identifier : \(identifier)
       |     Kind : \(kind)
       |     Type : \(type)
       |     Constant : \(constant)
       |     Array : \(array)
       |     Assigned : \(assigned)
       |     Line : \(lineNumber)
        =================================== \n
    """
    }
}




public struct SymbolTable {
  public var head: Node?
  public var tail: Node?
  public init() {}
  public var isEmpty: Bool {
    return head == nil
  }
}
extension SymbolTable: CustomStringConvertible {
  public var description: String {
    guard let head = head else {
      return "Empty list"
    }
    return String(describing: head)
  }
}

extension SymbolTable{
    
    public mutating func newNode(){
        self.push(Node())
    }
    
    public mutating func push(_ node : Node){
        copyNodes()
        node.next = head
        head = node
        if(tail == nil){
            self.tail = self.head
        }
    }
    
    public func onlyOneNode()-> Bool{return (head != nil && head?.next == nil)}
    
    public mutating func append(_ node : Node){
        copyNodes()
        guard !isEmpty else {
            push(node)
            return
        }
        tail!.next = node
        self.tail = self.tail!.next
    }
    
    public func node(at index: Int) -> Node?{
        var currentNode = head
        var currentIndex = 0
        
        while currentNode?.next != nil && currentIndex < index {
            currentIndex += 1
            currentNode = currentNode!.next
        }
        return currentNode
    }
    
    @discardableResult public mutating func insert(_ symbols : Node, after node : Node) -> Node{
        copyNodes()
        guard tail !== node else{
            self.append(symbols)
            return tail!
        }
        symbols.next = node.next
        node.next = symbols
        return node.next!
    }
    
    @discardableResult  public mutating func insertInHashTable(_ symbol : Symbol) -> Bool {
        let index = symbol.identifier.hashValue
        guard !isEmpty else {
            let node = Node(symbols: [index: symbol])
            push(node)
            print("Inserted symbol \(symbol.identifier) line \(symbol.lineNumber)")
            return true
        }
        
    
        if(self.head!.symbols[index] == nil){
            self.head!.symbols[index] = symbol
            print("Inserted symbol \(symbol.identifier) line \(symbol.lineNumber)")
            return true
        }else{
            return false
        }
    }
    
    public mutating func lookup(_ identifier: String) -> Symbol?{
        let index = identifier.hashValue
        guard !isEmpty else {
            return nil
        }
        
        var temp = head
        
        while(temp != nil && temp?.symbols[index] == nil){
            temp = temp?.next
        }
        
        if(temp != nil){
            return temp?.symbols[index]
        }else{
            return nil
        }
    }
    
    
    
    @discardableResult public mutating func pop() -> [Int: Symbol]?{
        copyNodes()
        defer {
            head = head?.next
            if isEmpty {
                tail = nil
            }
        }
        return head?.symbols
    }
    
    @discardableResult
    public mutating func removeLast() -> [Int: Symbol]? {
        copyNodes()
        guard let head = head else {return nil}
        guard head.next != nil else {return pop()}
        var temp = head
        var current = head
        
        while let next = current.next {
            temp = current
            current = next
        }
        
        temp.next = nil
        self.tail = temp
        return current.symbols
    }
    
    
    @discardableResult
    public mutating func remove(after node: Node) -> [Int: Symbol]? {
        copyNodes()
        defer {
            if node.next === self.tail  {
                self.tail = node
            }
            node.next = node.next?.next
        }
        return node.next?.symbols
    }
    
    private mutating func copyNodes(){
        guard !isKnownUniquelyReferenced(&head) else {
          return
        }
        guard var oldNode = head else {return}
        head = Node(symbols: oldNode.symbols)
        var newNode = head
        while let nextOldNode = oldNode.next {
            newNode!.next = Node(symbols: nextOldNode.symbols)
            newNode = newNode!.next
            oldNode = nextOldNode
          }
          tail = newNode
    }

}

extension SymbolTable: Collection {
    
  public struct Index: Comparable {
    
    public var node: Node?
    
    static public func ==(lhs: Index, rhs: Index) -> Bool {
      switch (lhs.node, rhs.node) {
      case let (left?, right?):
        return left.next === right.next
      case (nil, nil):
        return true
      default:
        return false
      }
    }
    
    static public func <(lhs: Index, rhs: Index) -> Bool {
        guard lhs != rhs else {
            return false
        }
        let nodes = sequence(first: lhs.node) { $0?.next }
        return nodes.contains { $0 === rhs.node }
    }
  }
    
    // 1
    public var startIndex: Index {
      return Index(node: head)
    }
    // 2
    public var endIndex: Index {
      return Index(node: tail?.next)
    }
    // 3
    public func index(after i: Index) -> Index {
      return Index(node: i.node?.next)
    }
    // 4
    public subscript(position: Index) -> [Int:Symbol] {
      return position.node!.symbols
    }
    
    
    
    
}


public class Node {
    public var symbols : [Int: Symbol]
    public var next : Node?
    
    init(symbols: [Int: Symbol] = [:], next : Node? = nil){
        self.symbols = symbols
        self.next = next
    }
    
    
    init(next : Node? = nil){
        self.symbols = [:]
        self.next = next
    }
    
    

}

extension Node: CustomStringConvertible {
  public var description: String {
    guard let next = next else {
        return "\(symbols)"
    }
      let t = self.symbols.reduce(into: "") { x, dic in
          x += "Hash\(dic.key) \t" + dic.value.description + "\n"
      }
    return "\(t) -> " + String(describing: next)  + "\n\n"
  }
}




/**
 
 
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

 class ST{
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
     
     func varScopeValid(_ variable : Variable,_ start : NodeSymbolTable?) -> Bool {
         print("ERROR, \(variable.identifier) ya existe")
         return start?.nextNode?.myVar.identifier == variable.identifier && start?.nextNode?.myVar.scope == variable.scope
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
             while(!varScopeValid(variable, start) && start?.nextNode != nil){
                 start = start?.nextNode
             }
             
             start?.nextNode = p
             print("Inserted \(variable.identifier)")
             return true
         }
     }
     
     func insertFunction(_ variable : Variable,_ lineaNum : UInt16) -> Bool {
         let index = variable.identifier.hashValue
         let p : NodeSymbolTable = NodeSymbolTable(variable: variable, lineNumber: lineaNum)
         if(self.head[index] == nil){
             head[index] = p
             print("Inserted \(variable.identifier)")
             return true
         }else{
             var start : NodeSymbolTable? = self.head[index]
             while(!varScopeValid(variable, start) && start?.nextNode != nil){
                 start = start?.nextNode
             }
             
             start?.nextNode = p
             print("Inserted \(variable.identifier)")
             return true
         }
     }
     
     func insertVariable(_ idFunction: String, _ variable : Variable, _ lineaNum : UInt16) -> Bool {
         let index = idFunction.hashValue
         print("JJ")
         let p : NodeSymbolTable = NodeSymbolTable(variable: variable, lineNumber: lineaNum)
         if(self.head[index] == nil){
             head[index] = p
             print("Inserted \(variable.identifier)")
             return true
         }else{
             let indexVariable = variable.identifier.hashValue
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



 extension ST : CustomStringConvertible {

     var description: String {
         return self.head.reduce("") { res, next in
             var a = ""
             if(next.value.nextNode != nil){
                
                 var temp : NodeSymbolTable? = next.value.nextNode!
                 while(temp != nil){
                     a += "\t " + temp!.description
                     temp = temp!.nextNode
                 }
             }
             
             return res + "\n" + next.value.description + (a != "" ? "\n\t| \(a) |" : a)
         }
     }
 }**/
