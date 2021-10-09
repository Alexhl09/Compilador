//
//  main.swift
//  Compilador
//
//  Created by Alejandro Hernández López on 25/09/21.
//

import Foundation

print("Nombre archivo: ")



let file = readLine()
let p = readFromFileJp(file ?? "")
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
    let st = CompilerParser.st
    print(st.description)
    print("Parseo exitoso")
} else {
    print("Error.")
}


/**


 var st : SymbolTable = SymbolTable()

 var check : String = ""

 if(st.insert(id: "if", scope: .local, type: .keyword, lineaNum: 4)){
     print("Exitoso")
 }else{
     print("Fallo de insercion")
 }

 if(st.insert(id: "number", scope: .global, type: .variable, typeVar: .integer, lineaNum: 4)){
     print("S")
 }else{
     print("F")
 }

 check = st.find(id: "if")

 if(check != "-1"){
     print("Identifier present")
 }else{
     print("Identifier not present")
 }

 if(st.deleteRecord(id: "if")){
     print("Id deleted")
 }else{
     print("Fail deleted")
 }

 if(st.modify(id: "number", s: .global, t: .variable, l: 3)){
     print("Number idetifier updated")
 }

 check = st.find(id: "number")

 if(check != "-1"){
     print("Present")
 }else{
     print("No present")
 }

 */
