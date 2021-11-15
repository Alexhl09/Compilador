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
        } catch let error{
            print(error.localizedDescription)
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }

}

func writeSemanticJp(semantic: SemanticHandler){
    if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
        let memoryText = semantic.description
        
        
        let fileURL = dir.appendingPathComponent("Tec").appendingPathComponent("9o semestre").appendingPathComponent("compis").appendingPathComponent("Compilador").appendingPathComponent("Compilador").appendingPathComponent("outputJPCompilador.txt")

        do {
            try memoryText.write(to: fileURL, atomically: true, encoding: String.Encoding.utf8)
        } catch {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }

}

extension String {
    func leftPadding(toLength: Int, withPad character: Character) -> String {
        let stringLength = self.count
        if stringLength < toLength {
            return String(repeatElement(character, count: toLength - stringLength)) + self
        } else {
            return String(self.suffix(toLength))
        }
    }
}
