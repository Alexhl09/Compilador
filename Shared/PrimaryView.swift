//
//  PrimaryView.swift
//  Compilador
//
//  Created by Alejandro Hernández López on 20/11/21.
//

import SwiftUI
/// Primary View has the console view with the prints and also has a view for standard input
struct PrimaryView  : View{
    @Binding var textoConsola : String
    @State var t: String = ""
    @Binding var VM : VirtualMachine?
  
    var body: some View {
        let binding = Binding<String>(get: {
                    self.t
                }, set: {
                    self.t = $0
                    
                    if(self.t.contains(" ")){
                        let res = self.t
                        do{
                            try writeInput(s: res)
                            VM?.lock.signal()
                        }catch let error{
                            print(error.localizedDescription)
                        }
                        self.t = ""
                        
                    }
                })
        VStack(){
            GeometryReader{ geo in
                VStack{
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(spacing: 20) {
                            Text(textoConsola).lineLimit(nil).fixedSize(horizontal: false, vertical: true).frame(width: geo.size.width, alignment: .leading)
                        }
                    }.frame(width: geo.size.width, height: geo.size.height, alignment: .leading)
                }
            }.padding()
            TextField("Standard Input", text: binding, prompt: Text("stdin"))
        }
    }
}

