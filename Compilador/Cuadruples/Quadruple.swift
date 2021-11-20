//
//  Quadruple.swift
//  Compilador
//
//  Created by Alejandro Hernández López on 12/10/21.
//

import Foundation

struct Quadruple : Identifiable{
    var id: UUID = UUID()
    
    var argument1 : String?
    let argument2 : String?
    let op : Operator
    var result : String?
}

extension Quadruple: CustomStringConvertible {
    public var description: String {
        return "Op: \(op )".padding(toLength: 20, withPad: " ", startingAt: 0) + "Address1: \(argument1 ?? "")".padding(toLength: 20, withPad: " ", startingAt: 0) + "Address2: \(argument2 ?? "")".padding(toLength: 20, withPad: " ", startingAt: 0) + "Result: \(result ?? "")"
    }
}

//func quadruple(op : Operator, arg1 : Symbol, arg2: Symbol? = nil) -> Symbol? {
//
//    guard let arg = arg2 else {return nil}
//    guard semanticCube[SemCubeKey(op1: arg1.type, op2: arg.type, o: op)] != nil else {return nil}
//    switch op {
//    case .sum:
//        //return
//    default:
//        return nil
//    }
//
//}
