//
//  EditorView.swift
//  Compilador
//
//  Created by Alejandro Hernández López on 20/11/21.
//

import SwiftUI
struct EditorView: View{
    @Binding var document : TextFile
    @State var showInspector : Bool = true
    @Binding var textoConsola : String
    @State var VM : VirtualMachine?
    #if os(iOS)
    private var idiom : UIUserInterfaceIdiom { UIDevice.current.userInterfaceIdiom }
    #endif

    var body: some View {
        #if os(iOS)
        if idiom == .phone {
            VStack{
                DetailView(document: $document, showInspector: $showInspector,  VM: $VM, text: textoConsola)
                if showInspector {
                    HStack{
                        Sidebar(VM: $VM)
                        PrimaryView(textoConsola: $textoConsola, VM: $VM)
                    }.padding()
                }
            }
        }else{
            HStack{
                DetailView(document: $document, showInspector: $showInspector,  VM: $VM, text: textoConsola)
                if showInspector {
                    VStack{
                        Sidebar(VM: $VM)
                        PrimaryView(textoConsola: $textoConsola, VM: $VM)
                    }.padding()
                }
            }
        }
        #else
        DetailView(document: $document, showInspector: $showInspector, VM: $VM, text: $textoConsola)
            if showInspector {
                VStack{
                    Sidebar(VM: $VM)
                    PrimaryView(textoConsola: $textoConsola, VM: $VM)
                }.padding()
            }
        #endif
    }

}
