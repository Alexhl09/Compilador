//
//  PrimaryView.swift
//  Compilador
//
//  Created by Alejandro Hernández López on 20/11/21.
//

import SwiftUI
struct PrimaryView  : View{
   // @Binding var textCompi
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
//
                    // do whatever you want here
                })
        VStack(){
            GeometryReader{ geo in
               // Text("\(geo.size.width)")
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


//


