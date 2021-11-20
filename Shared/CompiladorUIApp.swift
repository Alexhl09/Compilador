//
//  CompiladorUIApp.swift
//  Shared
//
//  Created by Alejandro Hernández López on 19/11/21.
//

import SwiftUI

class ConsoleSettings: ObservableObject {
    @Published var texto = ""
}

@main
struct CompiladorUIApp: App {
    @EnvironmentObject var textConsola: ConsoleSettings
    var body: some Scene {
        DocumentGroup(newDocument: TextFile()) { file in
            ContentView(document: file.$document)
        }
    }
    
    
}
