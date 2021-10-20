//
//  WriteFile.swift
//  Compilador
//
//  Created by Alejandro Hernández López on 19/10/21.
//

import Foundation

func writeSemanticAlex(semantic: SemanticHandler){
    if let dir = FileManager.default.urls(for: .desktopDirectory, in: .userDomainMask).first {
        let memoryText = semantic.description
        
        
        let fileURL = dir.appendingPathComponent("Projects").appendingPathComponent("Compilador").appendingPathComponent("Compilador").appendingPathComponent("outputCompilador.txt")

        do {
            try memoryText.write(to: fileURL, atomically: true, encoding: String.Encoding.utf8)
        } catch {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }

}
