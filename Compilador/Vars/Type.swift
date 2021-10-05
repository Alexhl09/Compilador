//
//  Type.swift
//  Compilador
//
//  Created by Alejandro Hernández López on 05/10/21.
//

import Foundation

enum TypeVar : Int {
    case void
    case integer
    case string
    case boolean
    case float
    case double
}

enum TypeWord : Int {
    case keyword
    case variable
}

