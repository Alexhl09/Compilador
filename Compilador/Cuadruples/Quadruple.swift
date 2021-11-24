//
//  Quadruple.swift
//  Compilador
//
//  Created by Alejandro Hernández López on 12/10/21.
//

import Foundation
/// Struct that saves 4 elements, arg1, arg2, op and result. Basic quadruple
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
