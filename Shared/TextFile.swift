//
//  TextFile.swift
//  Compilador
//
//  Created by Alejandro Hernández López on 20/11/21.
//

import SwiftUI
import UniformTypeIdentifiers

struct TextFile : FileDocument {
    func fileWrapper(configuration: WriteConfiguration) throws -> FileWrapper {
        let data = Data(text.utf8)
        return FileWrapper(regularFileWithContents: data)
    }
    
    static var readableContentTypes = [UTType.plainText]
    
    var text = ""
    
    init(initialText: String = "") {
        self.text = initialText
    }
    
    init(configuration: ReadConfiguration) throws {
        if let data = configuration.file.regularFileContents {
            text = String(decoding: data, as: UTF8.self)
            
        }
    }
}
//
//struct TextFile_Previews: PreviewProvider {
//    static var previews: some View {
//        TextFile()
//    }
//}
