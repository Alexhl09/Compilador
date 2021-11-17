//
//  Queue.swift
//  Compilador
//
//  Created by Alejandro Hernández López on 04/10/21.
//

import Foundation

public protocol QueueProtocol {
  associatedtype Element
  mutating func enqueue(_ element: Element) -> Bool
  mutating func dequeue() -> Element?
  var isEmpty: Bool { get }
  var peek: Element? { get }
}

public struct Queue<T> : QueueProtocol {
    private var leftStack: [T] = []
    private var rightStack: [T] = []
    public init() {}
    
    // Es vacio si los dos stacks estan vacios
    public var isEmpty: Bool {
        return leftStack.isEmpty && rightStack.isEmpty
    }
    
    public var size:Int{
        return leftStack.count + rightStack.count
    
    }
    
    // Para ver el primer dato ingresado
    // Si esta vacio el de la izquierda, es el primero del derecho
    // Si no esta vacio el de la izquierda, es el ultimo dato del izquierdo
    public var peek: T? {
      return !leftStack.isEmpty ? leftStack.last : rightStack.first
    }
    
    // Cada vez que mete un dato es directamente al stack de la derecha
    public mutating func enqueue(_ element: T) -> Bool {
      rightStack.append(element)
      return true
    }
    
    // Cada vez que saca un dato, revisa que este vacio el izquierdo,
    // si es asi, pasa los de la derecha al reves, y remueve todo lo de la derecha,
    // Saca el ultimo de la izquierda
    @discardableResult
    public mutating func dequeue() -> T? {
        if leftStack.isEmpty {
            leftStack = rightStack.reversed()
            rightStack.removeAll()
        }
        return leftStack.popLast()
    }
    
}

extension Queue: CustomStringConvertible {
  public var description: String {
    let printList = leftStack + rightStack.reversed()
    return "L | \(printList.description) | F"
  }
}
