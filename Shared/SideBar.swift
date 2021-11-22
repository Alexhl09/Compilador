//
//  SideBar.swift
//  Compilador
//
//  Created by Alejandro Hernández López on 20/11/21.
//

import SwiftUI
extension Collection {
  func enumeratedArray() -> Array<(offset: Int, element: Self.Element)> {
    return Array(self.enumerated())
  }
}

struct Sidebar : View{
    @Binding var VM : VirtualMachine?
#if os(iOS)
private var idiom : UIUserInterfaceIdiom { UIDevice.current.userInterfaceIdiom }
#endif
    var body: some View {
        
            #if os(macOS)
            List(Array(VM?.quadruples.enumeratedArray() ?? []), id: \.element.id){ (index, i) in
                Text("\(index) - \(i.description)").font(.system(size: 10))
            }
            .listStyle(SidebarListStyle()).cornerRadius(10)
            #else
        if(idiom == .phone){
            List(Array(VM?.quadruples.enumeratedArray() ?? []), id: \.element.id){ (index, i) in
                Text("\(index) - \(i.description)").font(.system(size: 10))
            }.navigationViewStyle(DefaultNavigationViewStyle()).cornerRadius(10)
        }else{
            List(Array(VM?.quadruples.enumeratedArray() ?? []), id: \.element.id){ (index, i) in
                Text("\(index) - \(i.description)").font(.system(size: 10))
            }.listStyle(SidebarListStyle()).cornerRadius(10)
        }
        
            #endif
    }
}
