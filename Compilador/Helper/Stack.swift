//
//  Stack.swift
//  Compilador
//
//  Created by Alejandro Hernández López on 04/10/21.
//

import Foundation

// MARK - Stack

public struct Stack<Element> {
      private var storage: [Element] = []
      public init() { }
    // Utiliza un array normal, en un append
    public mutating func push(_ element: Element) {
      storage.append(element)
    }
    
    public func size() -> Int {
        return storage.count
    }
    
    // Utiliza la funcion del array, popLast que saca el ultimo elemento ingresado
    @discardableResult
    public mutating func pop() -> Element? {
      return storage.popLast()
    }
    
    // Hay una funcion que revisa el ultimo elemento (last)
    public func peek() -> Element? {
     return storage.last
    }
    
    // Si el peek es nil, esta vacio
    public var isEmpty: Bool {
      return peek() == nil
    }
    
    public init(_ elements: [Element]) {
      storage = elements
    }
    
    public mutating func reverse(){
        self.storage.reverse()
    }
    
    public mutating func reverseFirst(n: Int){
        if(n > self.size()){
            self.storage.reverse()
        }else{
            let last = self.storage.dropFirst(n)
            let first : [Element] = self.storage.dropLast(size() - n).reversed()
            self.storage = first + last
        }
    }
    
    public mutating func reverseTop(n: Int){

        if(n > self.size()){
            self.storage.reverse()
        }else{
            let top = self.storage.dropFirst(size() - n).reversed()
            let bottom : [Element] = self.storage.dropLast(n)
            self.storage = bottom + top
        }
    }
}

extension Stack: CustomStringConvertible {
  public var description: String {
    let topDivider = "----top----\n"
    let bottomDivider = "\n----------"
    let stackElements = storage
      .map { "\($0)" }
      .reversed()
      .joined(separator: "\n")
    return topDivider + stackElements + bottomDivider
  }
}

extension Stack: ExpressibleByArrayLiteral{
    public typealias ArrayLiteralElement = Element
    
    public init(arrayLiteral elements: Element...) {
      storage = elements
    }
}
