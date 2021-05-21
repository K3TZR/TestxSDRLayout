//
//  Bottom.swift
//  TestxSDRLayout
//
//  Created by Douglas Adams on 5/19/21.
//

import SwiftUI

struct Bottom: View {

    @AppStorage("showBorder") var showBorder = false
    @AppStorage("allEnabled") var allEnabled = false

    @State var enabled = false

    var body: some View {
        GeometryReader { geo in
            HStack {
                Spacer()
                Button("Bottom (\(Int(geo.size.height)) x \(Int(geo.size.width)))") { enabled.toggle() }.foregroundColor(Color(.brown))
                Spacer()
            }
        }
        .frame(minWidth: 810, maxWidth: .infinity, minHeight: 40, maxHeight: 40)
        .if((allEnabled || enabled) && showBorder) { view in view.border(Color(.brown)) }
        .if((allEnabled || enabled) && !showBorder) { view in view.background(Color(.brown).opacity(0.2)) }
    }
}

struct Bottom_Previews: PreviewProvider {
    static var previews: some View {
        Bottom()
    }
}
