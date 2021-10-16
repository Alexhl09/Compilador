//
//  main.swift
//  Compilador
//
//  Created by Alejandro Hernández López on 25/09/21.
//

import Foundation

print("Nombre archivo: ")

let file = readLine()
let p = readFromFile(file ?? "")
let stream = CompilerStream.init(string: p)
let lex = CompilerLex.init(stream: stream)
//
//Now read all the tokens.
//    var tokenID = 0
//    while (-1 != tokenID) {
//        tokenID = lex.lex()
//        print("\(lex.line):\(lex.column) Token: \(tokenID) - \(lex.text) , value \(lex.value)\n");
//    }

let parser = CompilerParser.init(lexer: lex)
let error = CompilerErrorDelegate.init()
parser.errorDelegate = error
if (parser.parse()) {
    let st = parser.semantic
    print(st.symbolTable.description)
    print("Parseo exitoso")
} else {
    print("Error.")
}
