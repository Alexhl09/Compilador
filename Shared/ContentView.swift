//
//  ContentView.swift
//  Shared
//
//  Created by Alejandro Hernández López on 26/09/21.
//

import SwiftUI
import UniformTypeIdentifiers


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
