//
//  DetailView.swift
//  Compilador
//
//  Created by Alejandro Hernández López on 20/11/21.
//

import SwiftUI

struct DetailView : View{
    @Binding var document : TextFile
    @Binding var showInspector : Bool
    @State var showStop : Bool = false
    @Binding var VM : VirtualMachine?
    @Binding var text: String
    private let queue = DispatchQueue(label: "vm", qos: DispatchQoS.utility)

    #if os(iOS)
    private var idiom : UIUserInterfaceIdiom { UIDevice.current.userInterfaceIdiom }
    #endif
  
    var body: some View {
        ZStack{
            Color.black
            VStack{
                TextEditor(text: $document.text).font(.custom("HelveticaNeue", size: 20)).lineSpacing(3).cornerRadius(10).padding()
            }
        }.cornerRadius(10).navigationTitle("Editor").toolbar {
            #if os(iOS)
            ToolbarItemGroup(placement: .navigationBarTrailing) {
                Button {
                    build()
                } label: {
                    HStack(spacing: 10) {
                            Image(systemName: "wrench.fill")
                            Text("Build")
                    }
                }
                Button {
                    build()
                    if(VM != nil){
                        execute()
                    }else{
                        self.text = ""
                    }
                } label: {
                    HStack(spacing: 10) {
                            Image(systemName: "play.circle.fill")
                            Text("Play")
                           
                    }
                }
                if showStop {
                    Button{
                        queue.async {
                            VM?.stop()
                            DispatchQueue.main.async {
                                self.text = ""
                            }
                        }
                    } label: {
                        HStack(spacing: 10){
                            Image(systemName: "stop.fill")
                            Text("Stop")
                        }
                    }
                }
            }
            ToolbarItemGroup(placement: .navigationBarLeading) {
                Button(action: { showInspector.toggle() }) {
                    if idiom == .pad{
                        Label("Toggle Inspector", systemImage: "sidebar.right")
                    }else{
                        if !showInspector {
                            Label("Toggle Inspector", systemImage: "menubar.arrow.up.rectangle")
                        }else{
                            Label("Toggle Inspector", systemImage: "menubar.arrow.down.rectangle")
                        }
                    }
                }
                
            }
            
            #else
            Button {
                build()
               
            } label: {
                HStack(spacing: 10) {
                        Image(systemName: "wrench.fill")
                        Text("Build")
                }
            }.keyboardShortcut("b")
            Button {
                build()
                if(VM != nil){
                    execute()
                }else{
                    self.text = ""
                }
                
            } label: {
                HStack(spacing: 10) {
                        Image(systemName: "play.circle.fill")
                        Text("Play")
                       
                }
            }.keyboardShortcut("r")
            if showStop {
                Button{
                    queue.async {
                        VM?.stop()
                        DispatchQueue.main.async {
                            self.text = ""
                        }
                    }
                } label: {
                    HStack(spacing: 10){
                        Image(systemName: "stop.fill")
                        Text("Stop")
                    }
                }
            }
            Button(action: { showInspector.toggle() }) {
                Label("Toggle Inspector", systemImage: "sidebar.right")
            }.keyboardShortcut("h")
            
            #endif
            
            
        }
       
    }
    
    func build(){
        self.text = ""
        let stream = CompilerStream.init(string: document.text)
        let lex = CompilerLex.init(stream: stream)
        let parser = CompilerParser.init(lexer: lex)
        let error = CompilerErrorDelegate.init()
        parser.errorDelegate = error
        if (parser.parse()) {

            let st = parser.semantic
            self.VM = VirtualMachine(quadruples: st.quadruples, constants: st.constants, symbolTable: st.symbolTable, globalMemory: st.globalInfoStack, constantsInfo: st.constanstInfoStack)
        }else{
            self.VM = nil
            print("Error building...")
        }
    }
    
    func execute(){
        showStop = true
        
        queue.async {
                let start = DispatchTime.now()
                VM?.start()
                let end = DispatchTime.now()
                //print("Parseo exitoso")
                let nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds
                let timeInterval = Double(nanoTime) / 1_000_000_000
                print("Time to evaluate problem : \(timeInterval) seconds")
                showStop = false
            }
    }
    
    
}

extension Thread {
    class func printCurrent() {
        print("\r⚡️: \(Thread.current)\r" + "🏭: \(OperationQueue.current?.underlyingQueue?.label ?? "None")\r")
    }
}
