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
