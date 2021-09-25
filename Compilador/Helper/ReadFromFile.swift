//
//  ReadFromFile.swift
//  Compilador
//
//  Created by Alejandro Hernández López on 25/09/21.
//

import Foundation
func readFromFile(_ file : String) -> String {

    if let dir = FileManager.default.urls(for: .desktopDirectory, in: .userDomainMask).first {

        let fileURL = dir.appendingPathComponent("Projects").appendingPathComponent("LittleDuck").appendingPathComponent("LittleDuck").appendingPathComponent(file)

        //reading
        do {
            return try String(contentsOf: fileURL, encoding: .utf8)
        }
        catch {/* error handling here */}
    }
    return ""
}
