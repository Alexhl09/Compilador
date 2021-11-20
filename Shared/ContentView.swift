//
//  ContentView.swift
//  Shared
//
//  Created by Alejandro Hernández López on 26/09/21.
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

struct Sidebar : View{
    var body: some View {
        List(1..<100){ i in
            Text("Archivo \(i)")
        }
            #if os(macOS)
            .listStyle(SidebarListStyle())
            #else
            .navigationViewStyle(DefaultNavigationViewStyle())
            #endif
    }
}

struct PrimaryView  : View{
   // @Binding var textCompi
    @Binding var textoConsola : String
    var body: some View {
        Text(textoConsola).frame(maxWidth: .infinity, minHeight: 100, maxHeight: 200, alignment: .leading).foregroundColor(Color.white).background(Color.black).padding()
    }
}

struct DetailView : View{
    @Binding var document : TextFile
    @Binding var showInspector : Bool
    @State private var VM : VirtualMachine!
    @Binding var text: String
   
    //openConsolePipe()
    
    #if os(iOS)
    private var idiom : UIUserInterfaceIdiom { UIDevice.current.userInterfaceIdiom }
    #endif
    
//    func changeColor() -> NSMutableAttributedString{
//        let color = UIColor.red
//        let attrsString =  NSMutableAttributedString(string:document.text)
//        let keywords : [String] = ["func", "main", "var", "int", "double", "char"]
//        for k in keywords {
//            let indices = document.text.indicesOf(string: k)
//            for i in indices{
//                attrsString.addAttribute(NSAttributedString.Key.foregroundColor,value:color,range: NSRange(i...(i + (k.count - 1))))
//            }
//        }
//        return attrsString
//    }
//
    var body: some View {
        ZStack{
            Color.black
            VStack{
                TextEditor(text: $document.text).cornerRadius(10).padding()
//                VStack{
//                    UIKLabel {
//                            $0.attributedText = changeColor()
//                        }
//                }.background(Color.white)
            }
        }.cornerRadius(10).navigationTitle("Editor").toolbar {
            #if os(iOS)
            ToolbarItemGroup(placement: .navigationBarTrailing) {
                Button {
                    print("Build")
                } label: {
                    HStack(spacing: 10) {
                            Image(systemName: "wrench.fill")
                            Text("Build")
                    }
                }
                Button {
                    print("Play")
                } label: {
                    HStack(spacing: 10) {
                            Image(systemName: "play.circle.fill")
                            Text("Play")
                           
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
                let stream = CompilerStream.init(string: document.text)
                let lex = CompilerLex.init(stream: stream)

                //
                //Now read all the tokens.
                //    var tokenID = 0
                //    while (-1 != tokenID) {
                //        tokenID = lex.lex()
                //        print("\(lex.line):\(lex.column) Token: \(tokenID) - \(lex.text) , value \(lex.value)\n");
                //    }
                //var dest = LogDestination()
                //print("A", to: &dest)
                let parser = CompilerParser.init(lexer: lex)
                let error = CompilerErrorDelegate.init()
                parser.errorDelegate = error
                if (parser.parse()) {

                    let st = parser.semantic
                    self.VM = VirtualMachine(quadruples: st.quadruples, constants: st.constants, symbolTable: st.symbolTable, globalMemory: st.globalInfoStack, constantsInfo: st.constanstInfoStack)
                   // if(par)
                }else{
                    self.VM = nil
                }
               
               // print(document.text)
            } label: {
                HStack(spacing: 10) {
                        Image(systemName: "wrench.fill")
                        Text("Build")
                }
            }
            Button {
               // print("Play")
                if(VM != nil){
                let start = DispatchTime.now() // <<<<<<<<<< Start time
                VM.start()
                let end = DispatchTime.now()   // <<<<<<<<<<   end time
                print("Parseo exitoso")
                let nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds // <<<<< Difference in nano seconds (UInt64)
                let timeInterval = Double(nanoTime) / 1_000_000_000 // Technically could overflow for long running tests
                print("Time to evaluate problem : \(timeInterval) seconds")
                }
                text = ""
            } label: {
                HStack(spacing: 10) {
                        Image(systemName: "play.circle.fill")
                        Text("Play")
                       
                }
            }
            Button(action: { showInspector.toggle() }) {
                Label("Toggle Inspector", systemImage: "sidebar.right")
            }
            
            #endif
            
            
        }
       
    }
    
    
}



struct EditorView: View{
    @Binding var document : TextFile
    @State var showInspector : Bool = true
    @Binding var textoConsola : String
    #if os(iOS)
    private var idiom : UIUserInterfaceIdiom { UIDevice.current.userInterfaceIdiom }
    #endif

    var body: some View {
        #if os(iOS)
        if idiom == .phone {
            VStack{
                DetailView(document: $document, showInspector: $showInspector, text: textoConsola)
                if showInspector {
                    HStack{
                        Sidebar()
                        PrimaryView(textoConsola: textoConsola)
                    }.padding()
                }
            }
        }else{
            HStack{
                DetailView(document: $document, showInspector: $showInspector, text: textoConsola)
                if showInspector {
                    VStack{
                        Sidebar()
                        PrimaryView(textoConsola: textoConsola)
                    }.padding()
                }
            }
        }
        #else
        DetailView(document: $document, showInspector: $showInspector, text: $textoConsola)
            if showInspector {
                VStack{
                    Sidebar()
                    PrimaryView(textoConsola: $textoConsola)
                }.padding()
            }
        #endif
    }

}

struct ContentView: View {
    var pipe = Pipe()
    @StateObject var settings = ConsoleSettings()
    
    @Binding var document : TextFile
    @State var showInspector = true
    
    var body: some View {
        
        #if os(macOS)
        HSplitView{
            EditorView(document: $document, textoConsola: $settings.texto)
        }.onAppear {
            openConsolePipe()
        }
        #else
        NavigationView{
            EditorView(document: $document, textoConsola: $settings.texto)
        }.onAppear {
            openConsolePipe()
        }
        #endif
        
    }
    public func openConsolePipe () {
      //  **setvbuf(stdout, nil, _IONBF, 0).** //<--------- !
        dup2(pipe.fileHandleForWriting.fileDescriptor,
            STDOUT_FILENO)
        // listening on the readabilityHandler
        pipe.fileHandleForReading.readabilityHandler = {
         handle in
        let data = handle.availableData
        let str = String(data: data, encoding: .ascii) ?? "<Non-ascii data of size\(data.count)>\n"
        DispatchQueue.main.async {
            self.settings.texto += str
        }
      }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(TextFile()))
    }
}
//
//struct UIKLabel: UIViewRepresentable {
//
//    typealias TheUIView = UITextView
//    fileprivate var configuration = { (view: TheUIView) in }
//
//    func makeUIView(context: UIViewRepresentableContext<Self>) -> TheUIView { TheUIView() }
//    func updateUIView(_ uiView: TheUIView, context: UIViewRepresentableContext<Self>) {
//        configuration(uiView)
//    }
//}

//
//extension Text {
//    init(_ astring: NSAttributedString) {
//        self.init("")
//
//        astring.enumerateAttributes(in: NSRange(location: 0, length: astring.length), options: []) { (attrs, range, _) in
//
//            var t = Text(astring.attributedSubstring(from: range).string)
//
//            if let color = attrs[NSAttributedString.Key.foregroundColor] as? UIColor {
//                t  = t.foregroundColor(Color(color))
//            }
//
//            if let font = attrs[NSAttributedString.Key.font] as? UIFont {
//                t  = t.font(.init(font))
//            }
//
//            if let kern = attrs[NSAttributedString.Key.kern] as? CGFloat {
//                t  = t.kerning(kern)
//            }
//
//
//            if let striked = attrs[NSAttributedString.Key.strikethroughStyle] as? NSNumber, striked != 0 {
//                if let strikeColor = (attrs[NSAttributedString.Key.strikethroughColor] as? UIColor) {
//                    t = t.strikethrough(true, color: Color(strikeColor))
//                } else {
//                    t = t.strikethrough(true)
//                }
//            }
//
//            if let baseline = attrs[NSAttributedString.Key.baselineOffset] as? NSNumber {
//                t = t.baselineOffset(CGFloat(baseline.floatValue))
//            }
//
//            if let underline = attrs[NSAttributedString.Key.underlineStyle] as? NSNumber, underline != 0 {
//                if let underlineColor = (attrs[NSAttributedString.Key.underlineColor] as? UIColor) {
//                    t = t.underline(true, color: Color(underlineColor))
//                } else {
//                    t = t.underline(true)
//                }
//            }
//
//            self = self + t
//
//        }
//    }
//}

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
