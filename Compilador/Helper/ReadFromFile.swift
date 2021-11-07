//
//  ReadFromFile.swift
//  Compilador
//
//  Created by Alejandro Hernández López on 25/09/21.
//

import Foundation
func readFromFile(_ file : String) -> String {

    if let dir = FileManager.default.urls(for: .desktopDirectory, in: .userDomainMask).first {

        let fileURL = dir.appendingPathComponent("Projects").appendingPathComponent("Compilador").appendingPathComponent("Compilador").appendingPathComponent(file)

        //reading
        do {
            return try String(contentsOf: fileURL, encoding: .utf8)
        }
        catch {/* error handling here */}
    }
    return ""
}

func readFromFileJp(_ file : String) -> String {

    if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
        let fileURL = dir.appendingPathComponent("Tec").appendingPathComponent("9o semestre").appendingPathComponent("compis").appendingPathComponent("Compilador").appendingPathComponent("Compilador").appendingPathComponent(file)

        //reading
        do {
            return try String(contentsOf: fileURL, encoding: .utf8)
        }
        catch {/* error handling here */}
    }
    return ""
}

func randomString(length: Int) -> String {
  let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
  return String((0..<length).map{ _ in letters.randomElement()! })
}
