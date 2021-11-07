//
//  Arrays.swift
//  Compilador
//
//  Created by Alejandro Hernández López on 06/11/21.
//

import Foundation



public struct ArrayLinkedList {
  public var head: ArrayNode?
  public var tail: ArrayNode?
  public init() {}
  public var isEmpty: Bool {
    return head == nil
  }
}
extension ArrayLinkedList: CustomStringConvertible {
  public var description: String {
    guard let head = head else {
      return "Empty list"
    }
    return String(describing: head)
  }
}

extension ArrayLinkedList{
    
    public mutating func newArrayNode(){
        self.push(ArrayNode())
    }
    
    public mutating func push(_ node : ArrayNode){
        copyArrayNodes()
        node.next = head
        head = node
        if(tail == nil){
            self.tail = self.head
        }
    }
    
    public func onlyOneArrayNode()-> Bool{return (head != nil && head?.next == nil)}
    
    public mutating func append(_ node : ArrayNode){
        copyArrayNodes()
        guard !isEmpty else {
            push(node)
            return
        }
        tail!.next = node
        self.tail = self.tail!.next
    }
    
    public func node(at index: Int) -> ArrayNode?{
        var currentArrayNode = head
        var currentIndex = 0
        
        while currentArrayNode?.next != nil && currentIndex < index {
            currentIndex += 1
            currentArrayNode = currentArrayNode!.next
        }
        return currentArrayNode
    }
    
    @discardableResult public mutating func insert(_ symbols : ArrayNode, after node : ArrayNode) -> ArrayNode{
        copyArrayNodes()
        guard tail !== node else{
            self.append(symbols)
            return tail!
        }
        symbols.next = node.next
        node.next = symbols
        return node.next!
    }
   
    
    
    
    @discardableResult public mutating func pop() -> ArrayNode?{
        copyArrayNodes()
        defer {
            head = head?.next
            if isEmpty {
                tail = nil
            }
        }
        return head
    }
    
    @discardableResult
    public mutating func removeLast() -> ArrayNode? {
        copyArrayNodes()
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
        return current
    }
    
    
    @discardableResult
    public mutating func remove(after node: ArrayNode) -> ArrayNode? {
        copyArrayNodes()
        defer {
            if node.next === self.tail  {
                self.tail = node
            }
            node.next = node.next?.next
        }
        return node.next
    }
    
    private mutating func copyArrayNodes(){
        guard !isKnownUniquelyReferenced(&head) else {
          return
        }
        guard var oldArrayNode = head else {return}
        head = ArrayNode(limSup: oldArrayNode.limSup, m: oldArrayNode.m, dim: oldArrayNode.dim, r: oldArrayNode.r, next: oldArrayNode.next)
        var newArrayNode = head
        while let nextOldArrayNode = oldArrayNode.next {
            newArrayNode!.next = ArrayNode(limSup: nextOldArrayNode.limSup, m: nextOldArrayNode.m, dim: nextOldArrayNode.dim, r: nextOldArrayNode.r, next: nextOldArrayNode.next)
            newArrayNode = newArrayNode!.next
            oldArrayNode = nextOldArrayNode
          }
          tail = newArrayNode
    }

}

extension ArrayLinkedList: Collection {
    
  public struct Index: Comparable {
    
    public var node: ArrayNode?
    
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
    public subscript(position: Index) -> ArrayNode? {
      return position.node
    }

}


public class ArrayNode {
    public var limSup : Int
    public var m : Int
    public var dim : Int
    public var r : Int
    public var next : ArrayNode?
    
    init(limSup : Int, m: Int, dim : Int, r : Int, next : ArrayNode? = nil){
        self.limSup = limSup
        self.m = m
        self.r = r
        self.dim = dim
        self.next = next
    }
    
    init(next : ArrayNode? = nil){
        self.limSup = 0
        self.m = 0
        self.r = 0
        self.dim = 0
        self.next = next
    }
}

//extension ArrayArrayNode: CustomStringConvertible {
//  public var description: String {
//    guard let next = next else {
//        return "\(symbols)"
//    }
//      let t = self.symbols.reduce(into: "") { x, dic in
//          x += "Hash\(dic.key) \t" + dic.value.description + "\n"
//      }
//    return "\(t) -> " + String(describing: next)  + "\n\n"
//  }
//}


