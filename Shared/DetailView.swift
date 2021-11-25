//
//  DetailView.swift
//  Compilador
//
//  Created by Alejandro Hernández López on 20/11/21.
//

import SwiftUI
/// Has the textEditor to edit the text and has all the toolbar buttons to be used, like run or compile
struct DetailView : View{
    @Binding var document : TextFile
    @Binding var showInspector : Bool
    @State var showStop : Bool = false
    @Binding var VM : VirtualMachine?
    @Binding var text: String
    private let queue = DispatchQueue(label: "vm", qos: DispatchQoS.utility)
    @FocusState private var focusedField: Bool
    #if os(iOS)
    private var idiom : UIUserInterfaceIdiom { UIDevice.current.userInterfaceIdiom }
    #endif
  
    var body: some View {
        ZStack{
            Color.clear
            VStack{
                TextEditor(text: $document.text)
                    .disableAutocorrection(true)
                    .focused($focusedField)
                    .font(.custom("HelveticaNeue", size: 20))
                    .lineSpacing(3)
                    .cornerRadius(10)
                    .padding()

                
                //Text(makeAttributedString())
            }.toolbar {
                ToolbarItem(placement: .keyboard) {
                    Button("Done") {
                        focusedField = false
                    }
                }
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
                    if idiom == .phone && UIDevice.current.orientation.isPortrait{
                        if !showInspector {
                            Label("Toggle Inspector", systemImage: "menubar.arrow.up.rectangle")
                        }else{
                            Label("Toggle Inspector", systemImage: "menubar.arrow.down.rectangle")
                        }
                       
                    }else{
                        Label("Toggle Inspector", systemImage: "sidebar.right")
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
            }.keyboardShortcut("b", modifiers: .command)
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
            }.keyboardShortcut("r", modifiers: .command)
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
            }.keyboardShortcut("h", modifiers: .command)
            
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
                if(VM?.running == true){ print("Time to evaluate problem : \(timeInterval) seconds")}
                showStop = false
            }
    }
    
    
}

extension Thread {
    class func printCurrent() {
        print("\r⚡️: \(Thread.current)\r" + "🏭: \(OperationQueue.current?.underlyingQueue?.label ?? "None")\r")
    }
}

#if os(macOS)
extension NSTextView {
    open override var frame: CGRect {
        didSet {
            self.isAutomaticQuoteSubstitutionEnabled = false
        }
    }
}
#endif
