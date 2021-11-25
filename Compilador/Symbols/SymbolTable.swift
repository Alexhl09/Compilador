//
//  SymbolTable.swift
//  Compilador
//
//  Created by Alejandro Hernández López on 05/10/21.
//

import Foundation

/**
    The symbol is one object that encapsulates the information of something that has been declared with an identifier.
 It could be a variable, constant, array, or a function. It constains all the information needed to execute some operations in the semantic analysis
 */
public class Symbol {
    /// The line numer is the line in which the symbol is declared
    var lineNumber : UInt16
    /// The identifier is the id of the symbol
    var identifier: String
    /// The address given by the compiler during the semantic analysis
    var address: Int
    /// This property indicates if the symbol is a function or variable
    var kind : Kind
    /// The type indicates if the data type
    var type: TypeSymbol
    /// Indicates if the symbol is constant
    var constant : Bool
    /// Indicates of the symbol is an array
    var array : Bool
    /// If the symbol is an array it has a tuple with the dimensions in case of a 2D array
    var dimension2D : (Int, Int)?
    /// In case of an array it contains the information of all the dimensions in a LinkedList
    var arrayList : ArrayLinkedList?
    /// Indicates oif the symbol has been assigned
    var assigned : Bool
    /// The params given in case of a function
    var params : [Symbol] = []
    /// The localInfoStack of a function saves the value fo number of local addresses in function
    var localInfoStack: InfoStack = InfoStack()
    /// The localInfoStack of a function saves the value fo number of temporal addresses in function
    var temporalInfoStack: InfoStack = InfoStack()
    /// The currentCuadruple indicates in which quadruple is being anallized
    var currentCuadruple : Int = 1

    
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
    
    init(_ lineNumber : Int, _ identifier : NSString, _ kind : Kind, _ type : TypeSymbol, _ constant: Bool, _ array : Bool, _ assigned : Bool, address: Int = 0, rows : NSNumber, columns : NSNumber){
        self.lineNumber = UInt16(lineNumber)
        self.identifier = String(identifier)
        self.kind = kind
        self.type = type
        self.constant = constant
        self.array = array
        self.assigned = assigned
        self.address = address
        self.dimension2D = (rows.intValue, columns.intValue)
    }
    /// Default initializer
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
        let paramsString = params.reversed().reduce("") { res, s in
            res.appending("\(s.type)\t")
        }
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
       |     Address : \(address)
       |     Type parameters: \(paramsString)
        =================================== \n
    """
    }
}



/// Symbol Table is a linked list of node, each node representing one scope.
/// Each node has a dictionary that keeps track of each symbol saved
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
    /// This functions inserts a new symbol in the linked list in case this hasn't been declared in the same last node before
    @discardableResult  public mutating func insertInHashTable(_ symbol : Symbol) -> Bool {
        let index = symbol.identifier.hashValue
        guard !isEmpty else {
            let node = Node(symbols: [index: symbol])
            push(node)
            return true
        }
        
    
        if(self.head!.symbols[index] == nil){
            self.head!.symbols[index] = symbol
            return true
        }else{
            return false
        }
    }
    /// This functionslooks for the symbol with the help of an identifier. If it doesn't find it, looks in the next node, until it reaches the global node, if it was never found returns nil
    ///  - Parameter identifier: Takes the identifier to be looked up in the linkedlist
    ///  - Returns: An optional symbol in case of found.Iif not returns nil.

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


