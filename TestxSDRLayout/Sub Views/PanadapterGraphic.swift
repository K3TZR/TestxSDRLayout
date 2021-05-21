//
//  PanadapterGraphic.swift
//  TestxSDRLayout
//
//  Created by Douglas Adams on 5/20/21.
//

import SwiftUI

struct PanadapterGraphic: View {

    @AppStorage("showBorder") var showBorder = false
    @AppStorage("allEnabled") var allEnabled = false

    @State var enabled = false

    var body: some View {
        VStack {
            Button("Panadapter Graphic") { enabled.toggle() }.foregroundColor(Color(.green))
        }
        .frame(minWidth: 800, maxWidth: .infinity, minHeight: 400, maxHeight: .infinity)
        .if((allEnabled || enabled) && showBorder) { view in view.border(Color(.green)) }
        .if((allEnabled || enabled) && !showBorder) { view in view.background(Color(.green).opacity(0.2)) }
    }
}

struct PanadapterGraphic_Previews: PreviewProvider {
    static var previews: some View {
        PanadapterGraphic()
    }
}
