//
//  CompiladorUIApp.swift
//  Shared
//
//  Created by Alejandro Hernández López on 19/11/21.
//

import SwiftUI
import Combine

class ConsoleSettings: ObservableObject {
    @Published var texto = ""
}

@main
struct CompiladorUIApp: App {
    
    var body: some Scene {
        DocumentScene()
        
       // CustomScene()
        
    }
}

struct DocumentScene: Scene {
    private let exportCommand = PassthroughSubject<Void, Never>()

    var body: some Scene {
        DocumentGroup(newDocument: TextFile()) { file in
            ContentView(document: file.$document)
        }
    }
}
