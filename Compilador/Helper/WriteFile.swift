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

func writeInput(s: String) throws {
    let file = "input.aj" //this is the file. we will write to and read from it
    if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {

        let fileURL = dir.appendingPathComponent(file)

        //writing
        do {
            try s.write(to: fileURL, atomically: false, encoding: .utf8)
        }
        catch let error{/* error handling here */
            throw error
        }
    }
}


func readInput() -> String? {
    let file = "input.aj" //this is the file. we will write to and read from it
    if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {

        let fileURL = dir.appendingPathComponent(file)
        //reading
        do {
            let text2 = try String(contentsOf: fileURL, encoding: .utf8)
            deleteFile()
            return text2
        }
        catch {/* error handling here */}
    }
    return nil
}

func deleteFile(){
    let file = "input.aj"
    let fileManager = FileManager.default
            let documentsUrl =  FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first! as NSURL
            let documentsPath = documentsUrl.path

            do {
                if let documentPath = documentsPath
                {
                    let fileNames = try fileManager.contentsOfDirectory(atPath: "\(documentPath)")
                   // print("all files in cache: \(fileNames)")
                    for fileName in fileNames {

                        if (fileName.hasSuffix(".aj"))
                        {
                            let filePathName = "\(documentPath)/\(fileName)"
                            try fileManager.removeItem(atPath: filePathName)
                        }
                    }

                    let files = try fileManager.contentsOfDirectory(atPath: "\(documentPath)")
                   // print("all files in cache after deleting images: \(files)")
                }

            } catch {
                print("Could not clear temp folder: \(error)")
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


extension String {
    func indicesOf(string: String) -> [Int] {
        var indices = [Int]()
        var searchStartIndex = self.startIndex

        while searchStartIndex < self.endIndex,
            let range = self.range(of: string, range: searchStartIndex..<self.endIndex),
            !range.isEmpty
        {
            let index = distance(from: self.startIndex, to: range.lowerBound)
            indices.append(index)
            searchStartIndex = range.upperBound
        }

        return indices
    }
}
