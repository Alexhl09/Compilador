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
    var body: some View {
        List(Array(VM?.quadruples.enumeratedArray() ?? []), id: \.element.id){ (index, i) in
            Text("\(index) - \(i.description)").font(.system(size: 10))
        }
            #if os(macOS)
            .listStyle(SidebarListStyle())
            #else
            .navigationViewStyle(DefaultNavigationViewStyle())
            #endif
    }
}
