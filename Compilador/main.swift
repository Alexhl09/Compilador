//
//  main.swift
//  Compilador
//
//  Created by Alejandro Hernández López on 25/09/21.
//

import Foundation

print("Nombre archivo: ")

// let file = readLine()
let file = "func.aj"
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
    // print(st.symbolTable.description)
    writeSemanticAlex(semantic: st)
    let VM = VirtualMachine(quadruples: st.quadruples, constants: st.constants, symbolTable: st.symbolTable, globalMemory: st.globalInfoStack, constantsInfo: st.constanstInfoStack)
    print("------------------------")
    let start = DispatchTime.now() // <<<<<<<<<< Start time
    VM.start()
    let end = DispatchTime.now()   // <<<<<<<<<<   end time
    print("Parseo exitoso")
    let nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds // <<<<< Difference in nano seconds (UInt64)
    let timeInterval = Double(nanoTime) / 1_000_000_000 // Technically could overflow for long running tests
    print("Time to evaluate problem : \(timeInterval) seconds")
} else {
    print("Error.")
}
