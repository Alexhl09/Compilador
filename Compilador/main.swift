//
//  main.swift
//  Compilador
//
//  Created by Alejandro Hernández López on 25/09/21.
//

import Foundation

print("Nombre archivo: ")
let file = readLine()
let stream = CompilerStream.init(string: readFromFile(file ?? ""))
let lex = CompilerLex.init(stream: stream)

let parser = CompilerParser.init(lexer: lex)
let error = CompilerErrorDelegate.init()
parser.errorDelegate = error

if (parser.parse()) {
    print("Parseo exitoso")
} else {
    print("Error.")
}
